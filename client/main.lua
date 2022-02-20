local QBCore = exports['qb-core']:GetCoreObject()
local driftMode = false
RegisterNetEvent('qb-drifting:client:drifmode', function()
	local ped = PlayerPedId()
	if IsPedInAnyVehicle(ped) then
		local vehicle = GetVehiclePedIsIn(ped, false)
		if (GetPedInVehicleSeat(vehicle, -1) == ped) then
			local modifier = 1
			if GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff") > 90 then driftMode = true else driftMode = false end
			if driftMode then modifier = -1 end
			for index, value in ipairs(Config.handleMods) do
				SetVehicleHandlingFloat(vehicle, "CHandlingData", value[1], GetVehicleHandlingFloat(vehicle, "CHandlingData", value[1]) + value[2] * modifier)
			end
			if driftMode then
				QBCore.Functions.Notify(Lang:t('info.drift_mode') .. " " .. Lang:t('info.drift_mode_off').. " " .. Lang:t('info.enjoy_standard'), "success", 1000)
			else
				QBCore.Functions.Notify(Lang:t('info.drift_mode') .. " " .. Lang:t('info.drift_mode_on').. " " .. Lang:t('info.enjoy_sideways'), "success", 1000)
			end
			if GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff") < 90 then
				SetVehicleEnginePowerMultiplier(vehicle, 0.0)
			else
				if GetVehicleHandlingFloat(vehicle, "CHandlingData", "fDriveBiasFront") == 0 then
					SetVehicleEnginePowerMultiplier(vehicle, 190.0)
				else
					SetVehicleEnginePowerMultiplier(vehicle, 100.0)
				end
			end
		end
	end
end)