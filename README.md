# qbcore-halloween-event



-- halloweeen   QBCore --- 

	["candycorn"]  = { ["name"] = "candycorn", ["label"] = "Candy Corn", ["weight"] = 0, ["type"] = "item", ["image"] = "candycorn.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},
	["candypumpkins"]  = { ["name"] = "candypumpkins", ["label"] = "Candy Pumpkins", ["weight"] = 0, ["type"] = "item", ["image"] = "candypumpkins.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},
	["candyghosts"]  = { ["name"] = "candyghosts", ["label"] = "Candy Ghosts", ["weight"] = 0, ["type"] = "item", ["image"] = "candyghosts.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},
	["candypeppermint"]  = { ["name"] = "candypeppermint", ["label"] = "Candy Peppermint", ["weight"] = 0, ["type"] = "item", ["image"] = "candygreen.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},
	["candyworm"]  = { ["name"] = "candyworm", ["label"] = "Candy Worm", ["weight"] = 0, ["type"] = "item", ["image"] = "candygumworm.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},
	["candygum"]  = { ["name"] = "candygum", ["label"] = "Candy Gum", ["weight"] = 0, ["type"] = "item", ["image"] = "candygum.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Happy halloween"},




--- Consumeables


	["candycorn"] = math.random(5, 10),
	["candypumpkins"] = math.random(4, 5),
	["candyghosts"] = math.random(1, 10),
	["candypeppermint"] = math.random(5, 9),
	["candyworm"] = math.random(2, 4),
	["candygum"] = math.random(5, 7),
	
	
--- added into smallresources/extra client/main.lua
---
RegisterNetEvent("consumables:client:EatCandy")
AddEventHandler("consumables:client:EatCandy", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"fallover3"})
    DHCore.Functions.Progressbar("eat_something", "Eating..", 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", DHCore.Shared.Items[itemName], "remove")
		TriggerServerEvent("DHCore:Server:RemoveItem", itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("DHCore:Server:SetMetaData", "hunger", DHCore.Functions.GetPlayerData().metadata["hunger"] + Consumeables[itemName])
    end)
end)---

---



requires:
MHacking: https://github.com/GHMatti/FiveM-Scripts
Jigsaw: https://github.com/avilchiis/jigsaw-minigame



