local buyItemRemote = game.ReplicatedStorage.BuyItem
local gui = script.Parent
local buyButton = gui.TextButton

buyButton.MouseButton1Click:Connect(function()
	local purchaseSucess = buyItemRemote:InvokeServer()
	if purchaseSucess  then
		print("Yep, noice mate")
	end
end)
