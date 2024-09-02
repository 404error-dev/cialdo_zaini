ESX = exports.es_extended:getSharedObject()
local zainomesso = {}
for k, v in pairs(Config.BagsList) do
    ESX.RegisterUsableItem(k, function(source)
        if zainomesso[source] then
            exports.ox_inventory:SetMaxWeight(source, Config.PesoIniziale)
            TriggerClientEvent('simone_vario:LevaZaino', source)
            zainomesso[source] = nil
        else
            exports.ox_inventory:SetMaxWeight(source, Config.PesoIniziale + v.pesoAggiunto)
            TriggerClientEvent('simone_vario:MettiZaino', source, k)
            zainomesso[source] = k
        end
    end)
end
