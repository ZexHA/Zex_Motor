local a = true

Citizen.CreateThread(function()
    local ped = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(ped, false)
    while a == true do
        if GetIsVehicleEngineRunning(vehicle) then
            DisableControlAction(0, 75, true)
        else
            GetIsVehicleEngineRunning(vehicle)
            EnableControlAction(0, 75, true)
        end
        Citizen.Wait(1)
    end 
end)