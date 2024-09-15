if script_key then
return
end
--Put Your Key Between ""
script_key="hutaohub";
DelayTime = 300
getgenv().FpsBoost = false
getgenv().Setting = {
    ["Team"] = "Marines", --Marines
    ["Webhook"] = {
        ["Url"] = "https://discord.com/api/webhooks/1193427103803261079/7VPzqujQg_2VdvU0dRuxWhhBupaiATcpHNHFQ776g9MaOOSo1uI6We-N8dsmdhBLoWJ7",
        ["Enabled"] = true,
        ["Embed"] = true,
        ["StoredFruit"] = true,
        ["ImageEmbed"] = true,
        ["CustomImage"] = true,
        ["CustomImageUrl"] = "https://instagram.fhan14-1.fna.fbcdn.net/v/t51.2885-19/391307739_848675756903173_3613710877514687881_n.jpg?stp=dst-jpg_s150x150&efg=e30&_nc_ht=instagram.fhan14-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=4RCI4Pjt17kAX8UZlo2&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCQEWuy-FLgZqKNL2RZN4A00UoaxmfNGavWZe7adzjZkg&oe=659F1072&_nc_sid=8b3546", --Your Url
        ["OnServerHop"] = true,
        ["BountyChanged"] = true,
    }, 
    ["Panel"] = false,
    ["FpsBoost"] = {
        Enable = false,
        Mode = "Lite",--Lite: Just Lower Graphics, Full: Completely Make All Objects Transparent
    },
    ["Hide Theme"] = true,
    ["3D Render Disable"] = true,
    ["Theme"] = {
        ["Name"] = "Hutao",--"Old", "Raiden","Ayaka","Hutao","Yelan","Miko","Nahida","Ganyu","Keqing","Nilou","Barbara","Zhongli","Layla"
        ["Custom"] = {
            ["Enable"] = false,
            ['char_size'] = UDim2.new(0.668, 0, 1.158, 0),
            ['char_pos'] = UDim2.new(0.463, 0, -0.105, 0),
            ['title_color'] = Color3.fromRGB(255, 221, 252),
            ['titleback_color'] = Color3.fromRGB(169, 20, 255),
            ['list_color'] = Color3.fromRGB(255, 221, 252),
            ['liststroke_color'] = Color3.fromRGB(151, 123, 207),
            ['button_color'] = Color3.fromRGB(255, 221, 252)
        },
    },
    ["In Combat Reset"] = true, -- Shouldn't Cause Much False Resets, Enable This Make Farming Much Faster
    ["BypassTP"] = {
        ["Enable"] = true,
        ["Attempt"] = 5, -- Tween If Failed After x Attempts
    },
    ["DodgeSkill"] = true,
    ["SpectatePlayer"] = false,
    ["Config"] = {
        ["nameaccount1"] = "nameconfig.txt",
        ["nameaccount2"] = "nameconfig.txt",
    },
    ["Auto Use Race V3"] = {
        Enable = true,
        UseBelowHealth = false, -- Below Specific Health It Will use Race V3
        Health = 4500,
        NearPlayer = true, -- Only use If Near Player
    },
    ["Auto Use Race V4"] = true, -- No Way you are turning this off
    ["Auto Dash If Mink V4"] = false,
    ["Auto Dash If Ghoul V4"] = false,
    ["Spam All Skill On Race Transform V4"] = false,
    ["Failed To Load Data"] = {
        Rejoin = true,
        TimeToCheck = 30,
    },
    ["Detect KeyWords"] = { -- If There Is A Person Says A Key Word In Chat, It Will Stop Auto Bounty And  Server Hop
        Enable = false,
        Words = { "Hacker", "Exploiter", "Scripter", "Script", "Hack"}
    },
    AutoConfigMelee = true,
    AutoConfigSword = false,
    AutoConfigFruit = false,
    SwitchPlayerKeybind = "G", -- Except Y Keybind
    ["LimitServerHopTime"] ={ -- Only Hop After "Time" Seconds
        Enable = false,
        Time = 600, --Second
    },
    ["Position Config"] = {
        Mode = "Default",-- You Can Create Your Own Mode By Making An Index In The Table Like Custom
        Tween = true, -- If false then it will teleport when near target
        SkyTween = false, -- Tweening In The Sky Till You Are Near The Player, Recommended For Using Gun Method
        Spin = false,
        ["Default"] = {
            DistanceFromPlayer = {
                x = 0, y = 0, z = 0,
            }
        },
        ["Custom"] = {
            DistanceFromPlayer = {
                x = 0, y = 3, z = 0
            }
        }
    },
    ["ChatKill"] = {
        Enable = true,
        Chat = {
            ".-.. --- ...- . / -..- .. -- / -.-- . ."
        },
    },
    ["Mention"] = {
        ["Enable"] = false,
        ["Id"] = "everyone", -- You Can Replace With Your Id (not your discord Name)
        ["EveryBounty"] = 1000000,
    },
    ["FpsLock"] = {
        ["Enable"] = true,
        ["Cap"] = 30,
    },
    ["LockBounty"] = {
        ["Enable"] = true,
        ["Cap"] = 30000000,
        ["Action"] = "Kick", -- Kick, Shutdown
        ["SendMessage"] = true,
        ["Message"] = "Congratulation You Have Reached The Bounty Cap MyBounty 🔥 🔥 :fireworks: :fireworks: :fireworks:" -- It Will Replace MyBounty With Your Current Bounty, Add Ping Everyone If You Want
    },
    ["Click"] = {
        ["Enable"] = true,
        ["FastClick"] = true,
        ["OnLowHealthDisable"] = false,
        ["LowHealth"] = 3000,
    },
    ["Misc"] = {
        ["AutoBuyRandomandStoreFruit"] = true,
        ["AutoBuySurprise"] = true,
    },
    ["Invisible"] = true, -- Self Explain
    ["IgnoreFriends"] = true, --Server Hop When Your friends in your server
    ["GunMethod"] = false, --Use Melee,Gun Will automaticly disable invisible for things
    ["GunMethodSetting"] = {
        LessSusKillTest=true,
        StartHealth = 2000, -- Below Is Setting For Decrease Sus Kill From Gun Method
        waittime=10,
        EndHealth = 4000,
    },
    ["Notify"] = {
        Enable = true,
        CustomIcon = false,
        Image = "sticker.png", -- The Path Is: W-azure/AutoBounty/Notify
    },
    ["SpamSkill"] = false, -- Will use all skills as fast as possbile ignore holding skills
    ["Weapons"] = { -- Select Weapon, Self Explain
        ["Melee"] = {
            ["Enable"] = true,
            ["Delay"] = 3,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 1.5,
                    ["TimeToNextSkill"] = 0,
                },
            [ "X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
 
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
            },
        },
        ["Blox Fruit"] = {
            ["Enable"] = false,
            ["Delay"] = 4,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
 
                ["C"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
                ["V"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
                ["F"] = {
                    ["Enable"] = false,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
            },
        },
        ["Sword"] = {
            ["Enable"] = false,
            ["Delay"] = 0.5,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.1,
                    ["TimeToNextSkill"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0.2,
                    ["TimeToNextSkill"] = 0,
                },
            },
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Delay"] = 1.5,
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
                ["X"] = {
                    ["Enable"] = true,
                    ["HoldTime"] = 0,
                    ["TimeToNextSkill"] = 0,
                },
            },
        },
 
    }
}
repeat wait()
until game:IsLoaded()
delay(DelayTime or 300,function()
    local CG = game:GetService("CoreGui")
    if not CG:FindFirstChild("W-azureHubAutoBounty") then
       game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end
end)
wait(2)
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/1e7c7be9c64d317c9642fbd179359e72.lua"))()
