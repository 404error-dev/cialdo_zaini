ESX = exports.es_extended:getSharedObject()

RegisterNetEvent('simone_vario:LevaZaino', function()
    SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
end)

RegisterNetEvent('simone_vario:MettiZaino')
AddEventHandler('simone_vario:MettiZaino', function(item)
    
    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
        bag_id = Config.BagsList[item][1].id
        bag_texture = Config.BagsList[item][1].texture
    else 
        bag_id = Config.BagsList[item][0].id
        bag_texture = Config.BagsList[item][0].texture
    end
    
    SetPedComponentVariation(PlayerPedId(), 5, bag_id, bag_texture, 0)
end)