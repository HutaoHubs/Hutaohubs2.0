getgenv().c = {
    ["Team"] = "Marines", -- team select
    ["Buso"] = true, --allow buso
    ["Ken"] = true, --allow ken(observation)
    ["V3"] = true, --allow v3 race
    ["V4"] = true,  --allow v4 race 
    ["SkipFruit"] = {  --will skip all player using one of this fruit (Leave it blank if want hunt all)
        "Buddha-Buddha",
        "Venom-Venom",
        "Leopard-Leopard"
    },
    ["Main"] = {"Melee", "Sword"}, --select weapon
    ["MainSkillToggle"] = {
        ["Delay"] = 0.7, --Delay per skill
        ["Z"] = true, --toggle z
        ["X"] = true, --toggle X
        ["C"] = true,  -- toggle c
        ["V"] = true  -- toggle v
    },
    ["Webhooks"] = {
        ["Link"] = "https://discord.com/api/webhooks/1284715654619861055/BMPZY7FUVk8jmIF3zJtfSLvi1ADaikD9HnCF9m5D1lqJLsmC9UMarH7K6hTA-Nr2iYlZ",
        ["Banner"] = {
            ["KillTarg"] = "https://media-cdn-v2.laodong.vn/storage/newsportal/Uploaded/lethanhhuyen/2012_07_07/Adolf-Hitler.jpg?w=800&crop=auto&scale=both",
            ["StartScript"] = "https://media-cdn-v2.laodong.vn/storage/newsportal/Uploaded/lethanhhuyen/2012_07_07/Adolf-Hitler.jpg?w=800&crop=auto&scale=both",
            ["Hop"] = "https://media-cdn-v2.laodong.vn/storage/newsportal/Uploaded/lethanhhuyen/2012_07_07/Adolf-Hitler.jpg?w=800&crop=auto&scale=both",
        }
    },
    ["ToggleWebhook"] = true, --toggle webhook
    ["ChatSpam"] = {"Hutao hub is best"}, --chat while killed 
    ["MinBountyHunt"] = 0, --min bounty (for scanning target)
    ["MaxBountyHunt"] = 30000000, -- like in
    ["SafeHealth"] = 4000, --safe health while hide 
    ["YTween"] = true,  -- y tween (more fast)
    ["FixingTicks"] = 1200, --time auto hop while script has error(s)
    ["FixingTicksPerPlayer"] = 100, --next times per player (s)
} 

local p = game.Players
local lp = p.LocalPlayer
local aa = nil

getgenv().weapon = nil
getgenv().hop = 1
getgenv().shop = false
getgenv().old = nil
getgenv().targ = nil 
getgenv().start = nil
getgenv().checked = {}
getgenv().pl = p:GetPlayers()
getgenv().bounty = nil

_G.deb = {} 



    if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    else game.Players.LocalPlayer:Kick("") 
      wait(10) 
      game:GetService"TeleportService":Teleport(game.PlaceId)
    end 
    
if World3 then 
  warn(3)
  distbyp = 6000
 island = {
  ["Port Town"] = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375),
  ["Hydra Island"] = CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625),
  ["Floating Turtle"] = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625),
  ["Castle On The Sea"] = CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375),
  ["Haunted Island"] = CFrame.new(-9515.3720703125, 274.4736633300781, 5786.06103515625),
  ["Great Tree"] = CFrame.new(2316.61962890625, 130.3724822998047, -6442.16650390625),
  ["Candy Island"] = CFrame.new(-1080.7022705078125, 14.957878112792969, -14483.0458984375)
} 
elseif World2 then 
  distbyp = 3500
  warn(2)
   island = { 
    a = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
    b = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094),
    c= CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375),
    d= CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344),
     e=CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828), 
     f=CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875),
    g=CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
     h=CFrame.new(923.40197753906, 125.05712890625, 32885.875),
     i=CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125),
    }
elseif World1 then 
  distbyp = 1500
  
   island = { 
    a = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594), 
    b = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156), 
    c = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688), 
    d = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969), 
    e =CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754), 
    f = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094) ,
    g = CFrame.new(-4607.82275, 872.54248, -1667.55688), 
    h = CFrame.new(-7952.31006, 5545.52832, -320.704956),
    i = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313),
    j = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969),
    k = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
    l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
    m = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
    n = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875),
    o =CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
    p = CFrame.new(-4813.0249, 903.708557, -1912.69055),
    q = CFrame.new(-4970.21875, 717.707275, -2622.35449),
    } 
  end
------------ function
u5 = require(game.ReplicatedStorage:WaitForChild("Notification"))
u5.new("<Color=<Color=/>"):Display()
wait()
u5.new("<Color=Yellow><Color=/>"):Display() 
wait()
u5.new("<Color=Yellow><Color=/>"):Display() 
wait()
u5.new("<Color=Yellow><Color=/>"):Display()      
spawn(function()
    while task.wait() do
        pcall(function()
            if true then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

spawn(function()
    while wait() and game.Players.LocalPlayer.Team == nil do
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
            repeat
                wait()
                if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                    if getgenv().c["Team"] == nil or getgenv().c["Team"] == "Pirates" then
                        for i, v in pairs(
                            getconnections(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                            )
                        ) do
                            v.Function()
                        end
                    elseif getgenv().c["Team"] == "Marines" then
                        for i, v in pairs(
                            getconnections(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated
                            )
                        ) do
                            v.Function()
                        end
                    else
                        for i, v in pairs(
                            getconnections(
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated
                            )
                        ) do
                            v.Function()
                        end
                    end
                end
            until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
        end 
    end
end)
repeat wait() until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 

function bypass(Pos)   
  
if tween then
tween:Cancel() end
if hide or getgenv().shop or game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then return end

dist = math.huge
is = nil

for i , v in pairs(island) do
if (Pos.Position-v.Position).magnitude < dist then
is = v 

dist = (Pos.Position-v.Position).magnitude 
end
end 

if is == nil then return; end
if lp:DistanceFromCharacter(Pos.Position) > distbyp then 
  if is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875 then 
   
  	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
  return; 
  end
if
  (lp.Character.Head.Position-Pos.Position). magnitude >
(is.Position-Pos.Position).magnitude then



if tween then
tween:Destroy()
end 
if not stopbypass then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = is 

game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
lp.Character:SetPrimaryPartCFrame(is)
lp.Character.Head:Destroy()
wait(1)
lp.Character:SetPrimaryPartCFrame(is)
end 
end
end
end


function to(Pos) 
  if not stopbypass then
   bypass(Pos)
  end
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and not areportal then


game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame .Z)



Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 350 then 
  lp.Character.HumanoidRootPart.CFrame = Pos 
end  

if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
Hold.Name = "Hold"
Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
Hold.Velocity = Vector3.new(0, 0, 0)
end
local mul = 0.87
if Distance < 250 then
Speed = 700 * mul
elseif Distance < 500 then
Speed = 500 * mul
elseif Distance < 1000 then
Speed = 450 * mul
elseif Distance >= 1000 then
Speed = 350 * mul
end
pcall(
  function()
  tween =
  game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
    {
      CFrame = Pos
    }
  )
  end
)
tween:Play()

if _G.StopTween == true then
tween:Cancel()
_G.Clip = false
end
end
end 


function target() 
    if not arecall then 
        arecall = true 
        d = 15000
        p = nil
        getgenv().targ = nil
        getgenv().bounty = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value
        for i, v in pairs(game.Players:GetPlayers()) do 
          print("Attempt To Scanning: "..v)
            pcall(function() 
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and v:DistanceFromCharacter(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position) < 5000 then
                    print("Player Is Raiding")
                else
                    if lp.Team ~= v.Team or getgenv().c.Team == "Pirates" then 
                      print("Player Is Not Same Team")
                        if v and v:FindFirstChild("Data") and hasValue(getgenv().c["SkipFruit"], v.Data.DevilFruit.Value) == false then 
                          print("Player Allow")
                            if v ~= lp and v ~= getgenv().targ and lp.Character:FindFirstChild"Head" and (v.Character:FindFirstChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.Position).Magnitude < d and hasValue(getgenv().checked, v) == false then 
                              print ("Player Is nearer than an old one")
                                if (Vector3.new(5230.08, 68.1503, -1451.42) - v.Character.HumanoidRootPart.Position).Magnitude > 30 then 
                                  print("???")
                                    if (tonumber(game.Players.LocalPlayer.Data.Level.Value) - 500) < v.Data.Level.Value and v.Character then 
                                      print("player is enough level")
                                        if (v.leaderstats["Bounty/Honor"].Value >= getgenv().c["MinBountyHunt"]) and (v.leaderstats["Bounty/Honor"].Value <= getgenv().c["MaxBountyHunt"]) then 
                                          print("All done! Starting to hunt "..v.Name)
                                            p = v 
                                            d = (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude 
                                            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(getgenv().c.ChatSpam[math.random(0, #getgenv().c.ChatSpam)], "All") 
                                            u5 = require(game.ReplicatedStorage:WaitForChild("Notification"))
u5.new("<Color=Yellow>Sera Hub Auto Bounty<Color=/>"):Display()
u5.new("<Color=Yellow>Target: "..v.Name.."<Color=/>"):Display() 
u5.new("<Color=Yellow>If Have Bug/Error, Please Report At We Discord<Color=/>"):Display() 
u5.new("<Color=Yellow>bit.ly/serahub<Color=/>"):Display()      
                                        end
                                    end
                                end
                            end 
                        end
                    end
                end 
            end)
        end 
        if p == nil then starthop() end 
        getgenv().targ = p
        getgenv().start = os.time()
        arecall = false 
    end
end
function wSend(main)
    spawn(function()
        local Data = game:GetService("HttpService"):JSONEncode(main)
        local Head = {["content-type"] = "application/json"}
        Send = http_request or request or HttpPost or syn.request 
        if getgenv().c.ToggleWebhook then 
            Send({Url = getgenv().c.Webhooks.Link, Body = Data, Method = "POST", Headers = Head})
        end
    end)
end 

function wHop() 
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["author"] = {
                    ["name"] = game.Players.LocalPlayer.Name,
                    ["icon_url"] =  "",
                },
                ["color"] = 16228095,
                ["title"] = "", 
                ["description"] = "Server Hopping...",
                ["thumbnail"] = {
                    ["url"] = "",
                },
                ["image"] = {
                    ["url"] = getgenv().c.Webhooks.Hop or "",
                },
                ["footer"] = {
                    ["text"] = "",
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            }
        }
    }
    wSend(data)
end 

function wRecv() 
    local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "",
            ["color"] = 16228095,
            ["author"] = {
                ["name"] = game.Players.LocalPlayer.Name,
                ["icon_url"] =  "",
            },
            ["fields"] = {
                {
                    ["name"] = "Client Name",
                    ["value"] = "||"..lp.Name.."||",
                    ["inline"] = false,
                },
                {
                    ["name"] = "Server Id",
                    ["value"] = game.JobId,
                    ["inline"] = false,
                }
            },
            ["footer"] = {
                ["text"] = "",
            },
            ["image"] = {
                ["url"] = getgenv().c.Webhooks.StartScript or "",
            },
            ["thumbnail"] = {
                ["url"] = "",
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
        }
    }
}
wSend(data)
end
wRecv()
function format(number)
    local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
    int = int:reverse():gsub("(%d%d%d)", "%1,")
    return minus .. int:reverse():gsub("^,", "") .. fraction
end

function wEarn(targ, earn) 
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["author"] = {
                    ["name"] = game.Players.LocalPlayer.Name,
                    ["icon_url"] =  "https://static.wikia.nocookie.net/2840931c-afb4-482b-a364-18b968adac58",
                },
                ["title"] = "",
                ["color"] = 16228095,
                ["fields"] = {
                    {
                        ["name"] = "Client Name",
                        ["value"] = "||" ..game.Players.LocalPlayer.Name.. "||",
                        ["inline"] = false,
                    },
                    {
                        ["name"] = "Target",
                        ["value"] = targ.Name,
                        ["inline"] = false,
                    },
                    {
                        ["name"] = "Bounty",
                        ["value"] = format(earn).." Bounty",
                        ["inline"] = false,
                    },
                    {
                        ["name"] = "Team/Bounty",
                        ["value"] = "["..getgenv().c.Team.."] " ..format(lp.leaderstats["Bounty/Honor"].Value),
                        ["inline"] = false,
                    }
                },
                ["thumbnail"] = {
                    ["url"] = "",
                },
                ["image"] = {
                    ["url"] = getgenv().c.Webhooks.KillTarg or "",
                },
                ["footer"] = {
                    ["text"] = "",
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            }
    }
}
    wSend(data)
end

    
function starthop() 
    if getgenv().targ == nil then 
        if getgenv().shop == false then
            if getgenv().hop == 1 then 
                local safezone = Instance.new("Part")
                safezone.Position = Vector3.new(-11579.2, 2066.91, -6293.29)
                safezone.CanCollide = true
                safezone.Anchored = true
                safezone.Name = "Chest11"
                safezone.Parent = game:GetService("Workspace")
                safezone.Size = Vector3.new(2, 2.02, 1)
                wHop() 
                getgenv().shop = true
                getgenv().hop = getgenv().hop + 1 
                repeat 
                    wait() 
                    if game.Workspace:FindFirstChild("Chest11") then
                        local a = game.Workspace:FindFirstChild("Chest11") 
                        to(a.CFrame*CFrame.new(0,9999,0))
                    else
                        local safezone = Instance.new("Part")
                        safezone.Position = Vector3.new(-11579.2, 2066.91, -6293.29)
                        safezone.CanCollide = true
                        safezone.Anchored = true
                        safezone.Name = "Chest11"
                        safezone.Parent = game:GetService("Workspace")
                        safezone.Size = Vector3.new(2, 2.02, 1)
                    end
                    
                until lp.PlayerGui.Main.InCombat.Visible == false 
                Hop()
            end
        end
    end
end 
            
            

            

function buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage

        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    
    local function GetServers(cursor)
        local url = "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=2&limit=100"
        if cursor then
            url = url .. "&cursor=" .. cursor
        end
        return game.HttpService:JSONDecode(game:HttpGet(url))
    end
    
    local function TeleportToServer(serverId)
        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, serverId, game.Players.LocalPlayer)
    end
    
    while wait() do
        local site = GetServers(foundAnything)
        if site then
            foundAnything = site.nextPageCursor or ""
            for _, server in ipairs(site.data) do
                if tonumber(server.maxPlayers) > tonumber(server.playing) then
                    local serverId = tostring(server.id)
                    local isNewServer = true
                    for _, existingId in ipairs(AllIDs) do
                        if serverId == tostring(existingId) then
                            isNewServer = false
                            break
                        end
                    end
                    if isNewServer then
                        table.insert(AllIDs, serverId)
                        pcall(TeleportToServer, serverId)
                        wait(4)
                    end
                end
            end
        end
    end
end
    
    

function down(use) -- Send key to client
    game:GetService("VirtualInputManager"):SendKeyEvent(
        true,
        use,
        false,
        game.Players.LocalPlayer.Character.HumanoidRootPart
    )

    wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(
        false,
        use,
        false,
        game.Players.LocalPlayer.Character.HumanoidRootPart
    )
end
    
    
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                return item
            end
        end
    end

    return false
end 


-- Skill 

spawn(function()
    while wait(1) and getgenv().shop == false do
        pcall(function()
            if getgenv().c.Ken then
                if lp.Character:FindFirstChild("Head") and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 50 then
                    local screengui = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui
                    local numChildren = #screengui:GetChildren()
                    if numChildren == 0 then
                        down("K")
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() and getgenv().shop == false do 
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
            if lp.Character:FindFirstChild("Head") and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 50 then
                if getgenv().c.Buso then
                    buso()
                end
                if getgenv().c["V3"] then
                    down("T")
                end
                if getgenv().c["V4"] then
                    down("Y")
                end   
            end
        end)
    end
end)

pcall(function()
    spawn(function()
        while task.wait() and getgenv().shop == false do
          
            pcall(function()
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 20 then
                       spawn(function ()
                        pcall(function()
                            if string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:FindFirstChild("NotificationTemplate").Text), "player") then
                                table.insert(getgenv().checked, getgenv().targ)
                                getgenv().targ = nil
                                target()
                            end 
                        end) 
                        end)
                     
                        
                            if getgenv().c.MainSkillToggle.Z then 
                                down("Z") 
                                wait(getgenv().c.MainSkillToggle.Delay)
                            end
                            if getgenv().c.MainSkillToggle.X then 
                                down("X") 
                                wait(getgenv().c.MainSkillToggle.Delay)
                            end
                            if getgenv().c.MainSkillToggle.C then 
                                down("C") 
                                wait(getgenv().c.MainSkillToggle.Delay)
                            end
                            if getgenv().c.MainSkillToggle.V then  
                                down("V")  
                                wait(getgenv().c.MainSkillToggle.Delay) 
                            end 
                    end
                end
            end)
        end
    end)
end)
pcall(function()
    spawn(function()
        while wait() and getgenv().shop == false do
            if getgenv().targ == nil or not getgenv().targ or not getgenv().targ.Character then target() end
            if getgenv().targ == nil then starthop() end 
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
            pcall(function()
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 20 then
                        random()
                        equip(getgenv().weapon)
                        if getgenv().weapon == "Gun" then
                            wait(1)
                        else
                            wait(1.5)
                        end
                    end
                end
            end)
        end
    end)
end)

-- Random weapon
function random()
    spawn(function()
        getgenv().weapon = nil
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if hasValue(getgenv().c["Main"], v.ToolTip) then
                if getgenv().weapon == nil then getgenv().weapon = v.ToolTip end
            end
        end
    end)
end

-- No Clip
spawn(function()
    while wait() and getgenv().shop == false do 
        pcall(function()
            if true then
                local character = game.Players.LocalPlayer.Character
                for _, v in pairs(character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end
end)
-- Main 

spawn(function() 
    while wait(1) and getgenv().shop == false do 
        pcall(function()
            if getgenv().start ~= nil then
                if (os.time() - getgenv().start) >= getgenv().c["FixingTicksPerPlayer"] then
                    table.insert(getgenv().checked, getgenv().targ)
                    getgenv().targ = nil
                    target()
                end
            end
        end)
    end
end) 
spawn(function()
    while task.wait() and getgenv().shop == false do
        if (getgenv().bounty ~= nil and game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value ~= getgenv().bounty) then
            if (game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - getgenv().bounty) > 0 then
                wEarn(getgenv().targ, (game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - getgenv().bounty))
            end
        end
    end
end)

pcall(function()
    spawn(function()
        while task.wait() and getgenv().shop == false do 
            
            pcall(function() 
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then  
                --game:GetService("Workspace").Camera.CameraSubject = getgenv().targ.Character.Humanoid
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > getgenv().c["SafeHealth"] then 
                        pcall(function()
                            if lp.Character:FindFirstChild("Head") and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 5 then 
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
                                    print("Safe")
                                    table.insert(getgenv().checked, getgenv().targ)
                                    getgenv().targ = nil
                                    target()
                                end
                            end
                            if getgenv().targ.Character:FindFirstChild("Head") and getgenv().targ.Character.Humanoid.Health > 0 then 
                                to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,3,3))
                            else 
                                print("Die")
                                table.insert(getgenv().checked, getgenv().targ)
                                getgenv().targ = nil
                                target()
                            end
                        end)
                    else
                        if getgenv().targ.Character.Humanoid.Health > 0 then 
                            to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(1,9999,2))
                        else
                            print("Die1")
                            table.insert(getgenv().checked, getgenv().targ)
                            getgenv().targ = nil
                            target()
                        end
                    end
                end
            end)
        end
    end)
end)
spawn(function() 
    wait(getgenv().c["FixingTicks"]) 
    starthop()
end) 

-- Aim
local old = request 

hookfunction(request, newcclosuere(function(...)
  local args = (...)
  print(game:GetService"HttpService":JSONEncode(args)) 
  return old(...)
  end))
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    args[2] = AimBotSkillPosition
                    return old(unpack(args))
                end
            end
        end
        return old(...)
    end)
end)
            


pcall(function()
    spawn(function()
        while wait() and getgenv().shop == false do
            if getgenv().targ and getgenv().targ.Character and getgenv().targ.Character:FindFirstChild("HumanoidRootPart") then
                AimBotSkillPosition = getgenv().targ.Character:FindFirstChild("HumanoidRootPart").Position
            end
        end
    end)
end)

pcall(function()
    spawn(function()
        while wait() and getgenv().shop == false do
            pcall(function()
                if lp.Character:FindFirstChild("Head") and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 10 then 
                    if lp.Character:FindFirstChild("Humanoid") and getgenv().targ and getgenv().targ.Character:FindFirstChild("Humanoid") and getgenv().targ.Character.Humanoid.Health > 1000 then
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new(0, 0))
                    end
                end
            end)
        end
    end)
end)

require(game.ReplicatedStorage.Util.CameraShaker):Stop()


xShadowFastAttackx = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

xShadowx = debug.getupvalues(xShadowFastAttackx)[2]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
            if typeof(xShadowx) == "table" then
                pcall(function()
                    xShadowx.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    xShadowx.activeController.timeToNextAttack = 0
                    xShadowx.activeController.hitboxMagnitude = 200
                    xShadowx.activeController.active = false
                    xShadowx.activeController.timeToNextBlock = 0
                    xShadowx.activeController.focusStart = 0
                    xShadowx.activeController.increment = 4
                    xShadowx.activeController.blocking = false
                    xShadowx.activeController.attacking = false
                    xShadowx.activeController.humanoid.AutoRotate = 50
                end)
            end
        
    end)
end)
