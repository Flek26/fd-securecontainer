local QBCore = exports['qb-core']:GetCoreObject()

-- qb events
for k,v in pairs(Config.Containers) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.GetItemByName(item.name) then
            local container = Config.Containers[item.name]
            TriggerClientEvent("fd-containers:open", src, container.item, container.weight, container.slots)
        end
    end)
end