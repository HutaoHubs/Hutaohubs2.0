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
	Name = "💰Build A Boat For Treasure💰",
	Description = "Fast AutoFarming By Hutaohub",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/HutaoHubs/OPAUTOFARMBYHUTAOHUBS/main/readme.txt"))() end
     
}
