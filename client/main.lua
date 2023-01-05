local QBCore = exports[Config.Core]:GetCoreObject()

--- Events
RegisterNetEvent('fd-containers:open', function(itemName, weight, slots)
    LocalPlayer.state:set("inv_busy", true, true)
    TriggerEvent('animations:client:EmoteCommandStart', {"box"})
    QBCore.Functions.Progressbar("open-toychest", "Opening ".. itemName .."...", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', {"box"})
        TriggerServerEvent("inventory:server:OpenInventory", "stash", itemName..'-'..QBCore.Functions.GetPlayerData().citizenid, {maxweight = weight, slots = slots})
        TriggerEvent("inventory:client:SetCurrentStash", itemName..'-'..QBCore.Functions.GetPlayerData().citizenid)
    end, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        LocalPlayer.state:set("inv_busy", false, true)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)