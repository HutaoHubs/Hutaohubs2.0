local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/Lua/main/README.md"))()
local GUI = Mercury:Create{
    Name = "Hutao Hub",
    Size = UDim2.fromOffset(500, 330),
    Theme = Mercury.Themes.Legacy,
    Link = "Hutaohub Hub"
}
local Tab = GUI:Tab{
	Name = "Main Page",
	Icon = "rbxassetid://17576103507"
}

Tab:Button{
	Name = "•~Build A Boat For Treasure~•",
	Description = "Fast AutoFarming By Hutaohub",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/OPAUTOFARMBYHUTAOHUBS/main/readme.txt"))() end
     
}

Tab:Button{
	Name = "•~Murder Mystery 2 & Flee the facility~•",
	Description = "This Menu OP",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/Script-op/main/MM2.lua"))() end
     
}

Tab:Button{
	Name = "•~Welcome To BloxBurg~•",
	Description = "Autofarming HairDresser",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/BloxBurgAutoFarming/main/Autofarm.lua"))() end
     
}
