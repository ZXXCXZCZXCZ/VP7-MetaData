local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("PlusLevel:C", function ()
    TriggerServerEvent("PlusLevel")
end)

RegisterNetEvent("MinesLevel:C", function ()
    TriggerServerEvent("MinesLevel")
end)

RegisterNetEvent("VP7:OpenMenu", function()
    local Level = QBCore.Functions.GetPlayerData().metadata["foryoutube"]
    exports["qb-menu"]:openMenu({
        {
            header = "لفلك الحالي هو : " .. Level,
            isMenuHeader = true,
        },
        {
            header = "رفع لفلك + 1",
            params = {
                event = "PlusLevel:C",
            }
        },
        {
            header = "تنقيص لفلك - 1",
            params = {
                event = "MinesLevel:C",
            }
        },
    })
end)

RegisterCommand("foryoutube", function()
    TriggerEvent("VP7:OpenMenu")
end, false)
