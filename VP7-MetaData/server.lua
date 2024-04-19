local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("PlusLevel", function()
    local Player = QBCore.Functions.GetPlayer(source)
    local Level = Player.PlayerData.metadata["foryoutube"]
    if Level < 10 then
        print("+1")
        Player.Functions.SetMetaData("foryoutube", Level + 1)
    else
        print("stop1")
    end
    TriggerClientEvent("VP7:OpenMenu", source)
end)

RegisterNetEvent("MinesLevel", function()
    local Player = QBCore.Functions.GetPlayer(source)
    local Level = Player.PlayerData.metadata["foryoutube"]

    if Level > 0 then
        print("-1")
        Player.Functions.SetMetaData("foryoutube", Level - 1)
    else
        print("stop2")
    end
    TriggerClientEvent("VP7:OpenMenu", source)
end)

-- خلاصة الفيديو

--[[
    Player.Functions.SetMetaData = تعيير لفل اللاعب

     Player.PlayerData.metadata["foryoutube" --اسم الميتى] = معرفة لفل اللاعب الخالي

  ]]