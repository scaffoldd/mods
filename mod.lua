FRIENDS = {
    [2854704518] = true; --  aehstl
    [1217293145] = true; --  luca
    [1023735482] = true; --  6inch9inch
}

EPIC = {
    [2922543993] = true; -- epic
    [2629776425] = true; -- epic
    [243815866] = true; -- epic
    [2922441100] = true; -- epic
    [487833186] = true; -- epic
    [2922474692] = true; -- epic
}

--// Don't mess with anything below this
function initiateNames()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🤮] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if FRIENDS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌟] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if EPIC[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
