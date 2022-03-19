MODS = {
    [2821871340] = true; --  epic
    [2922611430] = true; -- epic
    [2891431356] = true; --  epic
    [2284579394] = true; -- epic
    [2871281714] = true; --  epic
    [207865831] = true; -- epic
    [208082598] = true; --  epic
    [207878887] = true; -- epic
    [208036088] = true; --  epic
    [207878465] = true; -- epic
    [208121130] = true; --  epic
    [207979095] = true; -- epic
    [208052033] = true; --  epic
    [208050706] = true; -- epic
    [208283082] = true; --  epic
    [207774893] = true; -- epic
}

ADMIN = {
    [2922543993] = true; -- epic
    [2629776425] = true; -- epic
    [243815866] = true; -- epic
    [2922441100] = true; -- epic
    [487833186] = true; -- epic
    [2922474692] = true; -- epic
}

--// Don't mess with anything below this
function initiateNames()
	game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if MODS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌟] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if ADMIN[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
