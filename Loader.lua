masterconfig = require(script.Parent)
folder = script.Parent.Parent
checked = false
game.Players.PlayerAdded:Connect(function (player) -- Player blacklist
	if player.UserId == 818165412  then
		player:Kick("Ziton Development-You have been blacklisted for joining games with Ziton Products. Reason: Test")
	end
end)
game.Players.PlayerAdded:Connect(function ()
	if checked == false then
		if game.CreatorId == 818165412  then
			warn("[Ziton POS]-This game is owned by a blacklisted user. Removing system.")
			folder:Destroy()
			end
	end
end)

game.Players.PlayerAdded:Connect(function (player)
	if player:GetRankInGroup(00000) >= 2 then
		player:Kick("Ziton Development-You are in a blacklisted Group: ID [Name]")
	end
end)
whitelisted = false
function whitelist ()
	if whitelisted == false then
		if game.PlaceId == 9551565940 then
			whitelisted = true
		else
			warn("[Ziton POS] STOLEN VERSION DETECTED")
			folder:Destroy()
		end
	end
end
