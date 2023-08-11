-- This file manages the main menu parts of the code.
-- I separated it here becuase it relies on nh-context and nh-keyboard and you may wish to replace it with your own method, maybe using ESX Menu Default?
-- The event called by the qtarget to open the menu
RegisterNetEvent('qidentification:requestLicense')
AddEventHandler('qidentification:requestLicense', function()
    local createMenu =
        { -- not necessary as you can hit "escape" to leave the nh-context menu, but I define a cancel button because it looks nice and makes sense from a user experience perspective
        {
            header = "取消",
            context = '',
            event = 'qidentification:cancel'
        }}
    -- loop through identification data defined in config.lua and add options for each entry
    for _, v in pairs(Config.IdentificationData) do
        createMenu[#createMenu + 1] = {
            header = "領取 " .. v.label,
            context = '$' .. v.cost,
            event = 'qidentification:applyForLicense',
            args = {{
                item = v.item
            }}
        }
    end

    -- actually trigger the menu event
    TriggerEvent('nh-context:createMenu', createMenu)
end)

-- the event that handles applying for license
RegisterNetEvent('qidentification:applyForLicense')
AddEventHandler('qidentification:applyForLicense', function(data)
    ESX.TriggerServerCallback('qidentification:canApply', function(canApply)
        if canApply then
            ESX.TriggerServerCallback('qidentification:getPlayerMoneyCount', function(moneyCount)
                local identificationData = nil

                -- Loop through identificationdata and match item and set a variable for future use
                for k, v in pairs(Config.IdentificationData) do
                    if v.item == data.item then
                        identificationData = v
                        break
                    end
                end

                -- check money vs cost
                if moneyCount < identificationData.cost then
                    ESX.UI.Notify("error", "你無法負擔費用")
                else
                    mugshotURL = exports['mugshot']:getMugshotUrl(ESX.PlayerData.ped, function(url)
                        local mugshotURL = url
                        -- if you allow custom mugshots, we use nh-keyboard to request the url - only direct image urls will work and it will be resized to fit.
                        -- if Config.CustomMugshots then
                        -- 	local customMugshot =
                        -- 		exports['NR_Dialog']:DialogInput(
                        -- 		{
                        -- 			header = 'Custom Mugshot URL (Leave blank for default)',
                        -- 			rows = {
                        -- 				{
                        -- 					id = 0,
                        -- 					txt = 'Direct Image URL (imgur,etc)'
                        -- 				}
                        -- 			}
                        -- 		}
                        -- 	)

                        -- 	if customMugshot ~= nil and customMugshot[1].input ~= nil then
                        -- 		mugshotURL = customMugshot[1].input
                        -- 	else
                        -- 		-- if no url is defined, it'll just use the mugshot resource to take an automatic one.
                        -- 	end
                        -- end
                        -- print(mugshotURL)
                        TriggerServerEvent('qidentification:server:payForLicense', identificationData, mugshotURL)
                    end)
                end
            end)

        else
            ESX.UI.Notify("error", Config.CannotApplyMsg[data.item])
        end
    end, data.item)
end)
