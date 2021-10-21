QBCore = nil
TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)    

RegisterServerEvent('qb-trickortreak:randomitem',function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local randoms = Config.Items[math.random(#Config.Items)] 
	Player.Functions.AddItem(randoms,Config.Amount)
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[randoms], "add", Config.Amount)
end)



QBCore.Functions.CreateUseableItem("candycorn", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)

QBCore.Functions.CreateUseableItem("candypumpkins", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)
QBCore.Functions.CreateUseableItem("candyghosts", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)


QBCore.Functions.CreateUseableItem("candypeppermint", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)

QBCore.Functions.CreateUseableItem("candyworm", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)

QBCore.Functions.CreateUseableItem("candygum", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
--	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatCandy", source, item.name)
  --  end
end)
