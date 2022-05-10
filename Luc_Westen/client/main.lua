ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)

RegisterNetEvent('Luc:WestenBig')
AddEventHandler('Luc:WestenBig', function()
	local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'
	local playerPed = PlayerPedId()

	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, 2000, 0, 0, false, false, false)
		exports['progressBars']:startUI(2000, "Weste wird angelegt")
		Wait(2000)
		AddArmourToPed(playerPed,Luc.BigArmor)
		SetPedArmour(playerPed, Luc.BigArmor)
	end)
end)

RegisterNetEvent('Luc:WestenSmall')
AddEventHandler('Luc:WestenSmall', function()
	local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'
	local playerPed = PlayerPedId()

	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, 2000, 0, 0, false, false, false)
		exports['progressBars']:startUI(2000, "Weste wird angelegt")
		Wait(2000)
		AddArmourToPed(playerPed,Luc.SmallArmor)
		SetPedArmour(playerPed, Luc.SmallArmor)
	end)
end)



