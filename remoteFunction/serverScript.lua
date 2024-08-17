local Players = game:GetService("Players")
local buyItemRemote = game.ReplicatedStorage.BuyItem
local serverStorage = game:GetService("ServerStorage")

Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local cash = Instance.new("IntValue")
	cash.Name = "cash"
	cash.Parent = leaderstats
	cash.Value = 100
end)

buyItemRemote.OnServerInvoke = function(plr)
	local purchaseSuccess = false
	
	local leaderstats = plr.leaderstats
	local cash = leaderstats.cash
	
	if (cash.Value >= 50) then
		cash.Value -= 50
		purchaseSuccess = true
		local hammer:Tool = serverStorage:FindFirstChild("Hammer")
		local hammerClone = hammer:Clone()
		hammerClone.Parent = plr.Backpack
	end
	
	return purchaseSuccess
end


