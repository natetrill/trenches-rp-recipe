QBCore = exports['qb-core']:GetCoreObject()

local Recipes = {
glock = { ingredients = {"steel","plastic"}, gang = "ballas" },
lean = { ingredients = {"sprite","codeine"}, gang = nil }
}

RegisterNetEvent('trenches:craft', function(item)
local src = source
local Player = QBCore.Functions.GetPlayer(src)
local recipe = Recipes[item]
if not recipe then return end

if recipe.gang and Player.PlayerData.gang.name ~= recipe.gang then
TriggerClientEvent('QBCore:Notify', src, "Not allowed", "error")
return
end

for _, ing in pairs(recipe.ingredients) do
Player.Functions.RemoveItem(ing, 1)
end

Player.Functions.AddItem(item, 1)
end)
