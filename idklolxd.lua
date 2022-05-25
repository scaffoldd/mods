
ModIDS = {
2882090680,
1217293145,
515595418,
845528741,
487833186,
1023735482,
2854704518,

   }


    EPIC = {
    2922441100,
    }

    Stands = {
    2922598438,
    2922620094,
    2922617104,
    2922618327,
    }


    coolpeopleyes = {
    2758727407, -- idk if it is 
    1688589423, -- kristina
    30759115, -- Lerk
    1576315081, -- compwnter
    265839211, -- dawn
    247946308, -- jojo
    3053271710, -- Crvstal
    3161015551, -- Crvstal
    2988820903, -- Crvstal
    3453666093, -- juiceblender or smthin idk bro
    1856160357, -- benoxav
    205626387, -- icxy
    2720177310, -- juiceblender??
    1112423310, -- brennen
    90717598, -- imie
    1834900976, -- styleblender
    }


--\\ Don't mess with anything below this
function swagnames()
	for _,Player in pairs(game:GetService('Players'):GetChildren()) do
		if table.find(ModIDS, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. Player.DisplayName)
				end
			end
		elseif
			table.find(coolpeopleyes, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😱]' .. Player.DisplayName)
				end
			end
		elseif
			table.find(Stands, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🥊]' .. Player.DisplayName)
				end
			end
		elseif
			table.find(EPIC, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. Player.DisplayName)
				end
			end
		if
			Player.Character then
			if Player.Character.Parent.Name == 'Players' then
				if not Player.Character.UpperTorso:FindFirstChild('OriginalSize') then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]' .. Player.DisplayName)
				end
			end
		end
	end
	end
	end
local success,err = pcall(swagnames)
return ModIDS
