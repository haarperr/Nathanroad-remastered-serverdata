-- targets and id mapping
local targets = {}
local activeTargets = {}

-- ui
local isOpen
local cfgSent
local uiFocus

-- locals
local plyPos = vec3(0,0,0)
local endCoords = vec3(0,0,0)
local entHit = 0

-- exports
local exportNames = {}

local function getEndCoords()
  return endCoords
end

local function getExportNames()
  return exportNames
end

ESX = nil

CreateThread(function()
  while ESX == nil do 
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
      Wait(0) 
  end

  while not ESX.GetPlayerData().job do Wait(0) end
end)

local selectMethods = {
  ['function'] = function(t,...)
    return t.onSelect(...)
  end,

  ['table'] = function(t,...)
    return t.onSelect(...)
  end,

  ['string'] = function(t,...)
    return TriggerEvent(t.onSelect,...)
  end
}
function tprint(a,b)for c,d in pairs(a)do local e='["'..tostring(c)..'"]'if type(c)~='string'then e='['..c..']'end;local f='"'..tostring(d)..'"'if type(d)=='table'then tprint(d,(b or'')..e)else if type(d)~='string'then f=tostring(d)end;print(type(a)..(b or'')..e..' = '..f)end end end
RegisterCommand('printtarget', function()
  tprint(targets)
end)

local typeChecks = {
  ['point'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType) 
    if targetDist > target.radius then
      return false
    end

    if #(endPos - target.point) > target.radius then
      return false
    end

    return true
  end,

  ['model'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType) 
    if not ent then
      return false
    end

    if target.hash ~= modelHash then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    return true
  end,

  ['localEnt'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if target.entId ~= ent then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    return true
  end,

  ['networkEnt'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent
    or not isNetworked 
    then
      return false
    end

    if target.netId ~= netId then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    return true
  end,

  ['polyZone'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not target.isInside then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    return true
  end,

  ['localEntBone'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if target.entId ~= ent then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if #(GetWorldPositionOfEntityBone(ent,target.bone) - pos) > target.radius then
      return false
    end

    return true
  end,

  ['netEntBone'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if target.netId ~= netId then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if #(GetWorldPositionOfEntityBone(ent,target.bone) - pos) > target.radius then
      return false
    end

    return true
  end,

  ['modelBone'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if target.hash ~= modelHash then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    local boneIndex = GetEntityBoneIndexByName(ent,target.bone)
    local bonePos = GetWorldPositionOfEntityBone(ent,boneIndex)

    if #(pos - bonePos) > target.radius then
      return false
    end

    return true
  end,

  ['player'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if not entityType then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if not IsPedAPlayer(ent) then
      return false
    end

    if entityType == 1 then
      return true
    end
  end,

  ['ped'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if not entityType then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if IsPedAPlayer(ent) then
      return false
    end

    if entityType == 1 then
      return true
    end
  end,

  ['vehicle'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if not entityType then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if entityType == 2 then
      return true
    end
  end,
  
  ['object'] = function(target,pos,ent,endPos,modelHash,isNetworked,netId,targetDist,entityType)
    if not ent then
      return false
    end

    if not entityType then
      return false
    end

    if targetDist > target.radius then
      return false
    end

    if entityType == 3 then
      return true
    end
  end
}

local function onSelect(target,option,...)
  if option.onSelect then
    return selectMethods[type(option.onSelect)](option,target,option,...)
  end

  return selectMethods[type(target.onSelect)](target,target,option,...)
end

local function shouldTargetRender(target,...)
  return typeChecks[target.type](target,...)
end

local function sendUiConfig()
  cfgSent = true

  SendNUIMessage({
    type = 'config',
    colors = Config.colors
  })
end

local function openUi()
  playerPed = cache.ped
  isOpen = true
  activeTargets = {}

  if not cfgSent then
    sendUiConfig()
  end

  SendNUIMessage({
    type = 'open'
  })
end

local function closeUi()
  isOpen = false

  SendNUIMessage({
    type = 'close'
  })

  SetNuiFocus(false,false)
end

local function cleanse(t)
  local res = {}

  for k,v in pairs(t) do
    local t = type(v)

    if t == 'table' then
      res[k] = cleanse(v)
    elseif t == 'function' then
      res[k] = false
    else
      res[k] = v
    end
  end

  return res
end

local function updateUi(targets)
  SendNUIMessage({
    type = 'setTargets',
    targets = cleanse(targets),
    job = ESX.GetPlayerData().job.name,
    job_grade = ESX.GetPlayerData().job.grade
  })
end

local function isEntityValid(ent)
  if not ent or ent == -1 then
    return false
  end

  return DoesEntityExist(ent)
end

local didChange = false

local function checkActiveTargets()
  local pos = GetEntityCoords(playerPed)
  local hit,endPos,entityHit = s2w.get(-1,playerPed,0)
  local entityModel,netId,isNetworked,targetDist,entityType = false,false,false,false,false

  if isEntityValid(entityHit) and GetEntityType(entityHit) ~= 0 then
    entityModel = GetEntityModel(entityHit)%0x100000000
    isNetworked = NetworkGetEntityIsNetworked(entityHit)
    entityType  = GetEntityType(entityHit)

    if isNetworked then
      netId = NetworkGetNetworkIdFromEntity(entityHit)
    end
  end

  plyPos      = pos
  endCoords   = endPos
  entHit      = entityHit

  local newTargets = {}

  targetDist = #(endPos - pos)
  for _,target in ipairs(targets) do
    if shouldTargetRender(target,pos,entityHit,endCoords,entityModel,isNetworked,netId,targetDist,entityType) then
      table.insert(newTargets,target)

      if not activeTargets[target.id] then
        activeTargets[target.id] = true
        didChange = true
      end
    else
      if activeTargets[target.id] then
        activeTargets[target.id] = nil
        didChange = true
      end
    end
  end

  if didChange then
    updateUi(newTargets)
    didChange = false
  end
end

local function targetUi()
  Wait(0)

  SetCursorLocation(0.5,0.5)
  SetNuiFocus(true,true)
  uiFocus = true
end

Citizen.CreateThread(function()  
  local gameName      = GetGameName()
  local control       = gameName == 'redm' and 0x580C4473 or 19
  local revealControl = gameName == 'redm' and 0x07CE1E61 or 24

  while true do
    Wait(3)

    if gameName == 'redm' then
      DisableControlAction(0,control)
      DisableControlAction(0,revealControl)
      DisableControlAction(0,0x0F39B3D4)
    else
      DisableControlAction(0,control)
    end

    if isOpen then
      local PlayerPed = cache.ped
      DisablePlayerFiring(PlayerPed, true)
      checkActiveTargets()

      if IsDisabledControlJustReleased(0,revealControl)
      or IsControlJustReleased(0,revealControl)  
      then
        targetUi()
      end

      if not uiFocus then
        if IsDisabledControlJustReleased(0,control)
        or IsControlJustReleased(0,control) 
        then
          closeUi()
        end
      end
    else
      if IsDisabledControlJustPressed(0,control)
      or IsControlJustPressed(0,control) 
      then
        openUi()
      end
    end
  end
end)

RegisterNUICallback('closed',function()
  uiFocus = false
  isOpen  = false
  SetNuiFocus(false,false)
end)

RegisterNUICallback('select',function(data)
  data.id     = data.id
  data.index  = tonumber(data.index)+1
  
  local isActive = activeTargets[data.id]

  if not isActive then
    return
  end

  local target

  for _,t in ipairs(targets) do
    if t.id == data.id then
      target = t
      break
    end
  end

  if not target then
    return
  end

  local option = target.items[data.index]

  if not option then
    return
  end
  
  uiFocus = false
  isOpen  = false
  SetNuiFocus(false,false)

  onSelect(target,option,entHit)
end)

local function addTarget(target)
  table.insert(targets,target)
end

mTarget = {}

function mTarget.removeTarget(...)
  for i=1,select("#",...),1 do
    local id = select(i,...)
    
    for i=#targets,1,-1 do
      if targets[i].id == id then
        table.remove(targets,i)
      end
    end

    if activeTargets[id] then
      activeTargets[id] = nil
      didChange = true
    end
  end
end

function mTarget.addModel(id,title,icon,model,radius,onSelect,items,vars,res)
  local hash = (type(model) == 'number' and model or GetHashKey(model))%0x100000000

  addTarget({
    id        = id,
    type      = 'model',
    title     = title,
    icon      = icon,
    model     = model,
    hash      = hash,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addModelBone(id,title,icon,model,bone,radius,onSelect,items,vars,res)
  local modelHash = (type(model) == 'number' and model or GetHashKey(model)) %0x100000000

  addTarget({
    id        = id,
    type      = 'modelBone',
    title     = title,
    icon      = icon,
    model     = model,
    hash      = modelHash,
    bone      = bone,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addModelBones(id,title,icon,model,bones,radius,onSelect,items,vars,res)
  local targetIds = {}

  for i=1,#bones do
    local targetId = id .. ":" .. i

    mTarget.addModelBone(targetId,title,icon,model,bones[i],radius or Config.defaultRadius,onSelect,items,vars,res)

    table.insert(targetIds,targetId)
  end

  return table.unpack(targetIds)
end

function mTarget.addPoint(id,title,icon,point,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'point',
    title     = title,
    icon      = icon,
    point     = point,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addModels(id,title,icon,models,radius,onSelect,items,vars,res)
  local targetIds = {}

  for i=1,#models do
    local targetId = id .. ":" .. i

    mTarget.addModel(targetId,title,icon,models[i],radius or Config.defaultRadius,onSelect,items,vars,res)

    table.insert(targetIds,targetId)
  end

  return table.unpack(targetIds)
end

function mTarget.addNetEnt(id,title,icon,netId,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'networkEnt',
    title     = title,
    icon      = icon,
    netId     = netId,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addLocalEnt(id,title,icon,entId,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'localEnt',
    title     = title,
    icon      = icon,
    entId     = entId,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addInternalPoly(id,title,icon,points,options,radius,onSelect,items,vars,res)
  local target = {
    id        = id,
    type      = 'polyZone',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  }

  local polyZone = PolyZone:Create(points,options)

  polyZone:onPointInOut(getEndCoords,function(isPointInside,point)
    target.isInside = isPointInside
  end,500)

  addTarget(target)
end

function mTarget.addExternalPoly(id,title,icon,radius,onSelect,items,vars,res)
  local target = {
    id        = id,
    type      = 'polyZone',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  }

  addTarget(target)

  return function(isInside)    
    target.isInside = isInside
  end
end

function mTarget.addInternalBoxZone(id,title,icon,center,length,width,options,radius,onSelect,items,vars,res)    
  local target = {
    id        = id,
    type      = 'polyZone',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  }

  local boxZone = BoxZone:Create(center,length,width,options)

  boxZone:onPointInOut(getEndCoords,function(isPointInside,point)
    target.isInside = isPointInside
  end,500)

  addTarget(target)
end

function mTarget.addExternalBoxZone(id,title,icon,radius,onSelect,items,vars,res)
  local target = {
    id        = id,
    type      = 'polyZone',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  }

  addTarget(target)

  return function(isInside)    
    target.isInside = isInside
  end
end

function mTarget.addNetEntBone(id,title,icon,netId,bone,radius,onSelect,items,vars,res)
  local modelHash = (type(model) == 'number' and model or GetHashKey(model)) %0x100000000

  addTarget({
    id        = id,
    type      = 'netEntBone',
    title     = title,
    icon      = icon,
    netId     = netId,
    hash      = modelHash,
    bone      = bone,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addNetEntBones(id,title,icon,netId,bones,radius,onSelect,items,vars,res)
  local targetIds = {}

  for i=1,#bones do
    local targetId = id .. ":" .. i

    mTarget.addNetEntBone(targetId,title,icon,netId,bones[i],radius or Config.defaultRadius,onSelect,items,vars,res)

    table.insert(targetIds,targetId)
  end

  return table.unpack(targetIds)
end

function mTarget.addLocalEntBone(id,title,icon,entId,bone,radius,onSelect,items,vars,res)
  local modelHash = (type(model) == 'number' and model or GetHashKey(model)) %0x100000000

  addTarget({
    id        = id,
    type      = 'localEntBone',
    title     = title,
    icon      = icon,
    entId     = entId,
    hash      = modelHash,
    bone      = bone,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addLocalEntBones(id,title,icon,entId,bones,radius,onSelect,items,vars,res)
  local targetIds = {}

  for i=1,#bones do
    local targetId = id .. ":" .. i

    mTarget.addLocalEntBone(targetId,title,icon,entId,bones[i],radius or Config.defaultRadius,onSelect,items,vars,res)

    table.insert(targetIds,targetId)
  end

  return table.unpack(targetIds)
end

function mTarget.addPlayer(id,title,icon,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'player',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addVehicle(id,title,icon,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'vehicle',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addObject(id,title,icon,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'object',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

function mTarget.addPed(id,title,icon,radius,onSelect,items,vars,res)
  addTarget({
    id        = id,
    type      = 'ped',
    title     = title,
    icon      = icon,
    radius    = radius or Config.defaultRadius,
    onSelect  = onSelect,
    items     = items,
    vars      = vars,
    resource  = res or GetInvokingResource()
  })
end

for fnName,fn in pairs(mTarget) do
  exports(fnName,fn)
  exportNames[#exportNames+1] = fnName
end

exports('getEndCoords',getEndCoords)
exports('getExportNames',getExportNames)

AddEventHandler('onClientResourceStop',function(res)
  for i=#targets,1,-1 do
    if targets[i].resource == res then
      table.remove(targets,i)
    end
  end
end)