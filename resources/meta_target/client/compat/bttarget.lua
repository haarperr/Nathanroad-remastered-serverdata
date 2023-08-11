local exportPrefix = 'bt-target'

local function getExportEventName(name)
  return string.format('__cfx_export_%s_%s',exportPrefix,name)
end

local randomNameId = 0

local exports = {
  AddCircleZone = function(name,center,radius,options,targetOptions)
    local items = {}

    for _,t in ipairs(targetOptions.options) do
      table.insert(items,{
        label = t.label,
        onSelect = t.event
      })
    end

    return mTarget.addPoint(name,name:upper(),targetOptions.options[1].icon,center,radius,false,items,{},GetInvokingResource())
  end,

  AddBoxZone = function(name,center,length,width,options,targetOptions)
    local items = {}

    for _,t in ipairs(targetOptions.options) do
      table.insert(items,{
        label = t.label,
        onSelect = t.event
      })
    end

    return mTarget.addInternalBoxZone(name,name:upper(),targetOptions.options[1].icon,center,length,width,options,targetOptions.distance or false,false,items,{},GetInvokingResource())
  end,

  AddPolyZone = function(name,points,options,targetOptions)
    local items = {}

    for _,t in ipairs(targetOptions.options) do
      table.insert(items,{
        label = t.label,
        onSelect = t.event
      })
    end

    return mTarget.addInternalPoly(name,name:upper(),targetOptions.options[1].icon,points,options,targetOptions.distance or false,false,items,{},GetInvokingResource())
  end,

  AddTargetModel = function(models,targetOptions)
    local items = {}

    for _,t in ipairs(targetOptions.options) do
      table.insert(items,{
        label = t.label,
        onSelect = t.event
      })
    end

    randomNameId = randomNameId + 1

    local name = 'bt_model_' .. randomNameId

    return mTarget.addModels(name,name:upper(),targetOptions.options[1].icon,models,targetOptions.distance or false,false,items,{},GetInvokingResource())
  end,

  RemoveZone = function(name)
    return mTarget.removeTarget(name)
  end
}

for k,v in pairs(exports) do
  AddEventHandler(getExportEventName(k),function(cb)
    cb(v)
  end)
end
