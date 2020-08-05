local display = false

RegisterCommand("on", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:on", true)
    end)
end)

RegisterCommand("off", function()
    Citizen.CreateThread(function()
        TriggerEvent("nui:off", true)
    end)
end)

--[[////////////////////////////////////////////////////////////////////////////////]]

RegisterNetEvent("nui:on")
AddEventHandler("nui:on", function(value)
    SendNUIMessage({
        type = "ui",
        display = true
    })
end)


RegisterNetEvent("nui:off")
AddEventHandler("nui:off", function(value)
    SendNUIMessage({
        type = "ui"
        display = false
    })
end)

--[[
DO NOT REMOVE BELOW

This script was fully created and developed by "Sean" there discord is "Sean B.#0899"
if you need any help with the script please contact me on my discord and I will try to
help as many of you as possibe.
]]