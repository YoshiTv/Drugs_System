ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("raccolta", function(item)
    exports.ox_inventory:AddItem(source, 'cimetta', Config.ItemRicevere.raccolta, false, false)
end)

RegisterServerEvent("processo", function(item)
    exports.ox_inventory:RemoveItem(source, Config.ItemRicevere.raccolta, Config.ProcessoRimuovere, false, false)
    exports.ox_inventory:AddItem(source, Config.ItemRicevere.processo, Config.ProcessoRicevere, false, false)
end)