QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
while true do
Wait(0)
if IsControlJustPressed(0, 38) then
TriggerServerEvent('trenches:craft', 'glock')
end
end
end)
