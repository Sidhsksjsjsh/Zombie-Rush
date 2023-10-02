--[[
   ill add silent aim / Bullet Tracker soon
   The name Bullet Tracker is inspired by PUBG Mobile cheats
   I love Cheating!!
]]

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()

local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = true, ConfigFolder = "TurtleFi"})

local T1 = Window:MakeTab({
Name = "Main",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Player",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T3 = Window:MakeTab({
Name = "Misc",
Icon = "rbxassetid://",
PremiumOnly = false
})

T1:AddToggle({
Name = "Kill All Zombie V1",
Default = false,
Callback = function(Value)
_G._A1 = Value
while wait() do
if _G._A1 == false then break end
pcall(function()
local ohthatscomplicated = {
   ["Name"] = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").Name,
   ["HumanoidTables"] = {
   }
}
for i,v in pairs(workspace[".ZombieStorage"]:GetChildren()) do
   local hm = {
       ["HeadHits"] = math.huge,
       ["THumanoid"] = v:FindFirstChildOfClass('Humanoid'),
       ["BodyHits"] = 0
   }
   table.insert(ohthatscomplicated["HumanoidTables"],hm)
end
pcall(function()
game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunControllerAlt.RemoteFunction:InvokeServer(ohthatscomplicated)
end)
game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunController.RemoteFunction:InvokeServer(ohthatscomplicated)
end)
end
end})

T1:AddToggle({
Name = "Kill All Zombie V2",
Default = false,
Callback = function(Value)
_G._A2 = Value
while wait(0.2) do
if _G._A2 == false then break end
pcall(function()
local ohthatscomplicated = {
    ["Name"] = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").Name,
    ["HumanoidTables"] = {
    }
}
for i,v in pairs(workspace[".ZombieStorage"]:GetChildren()) do
    local hm = {
        ["HeadHits"] = math.huge,
        ["THumanoid"] = v:FindFirstChildOfClass('Humanoid'),
        ["BodyHits"] = 0
    }
    table.insert(ohthatscomplicated["HumanoidTables"],hm)
end
pcall(function()
game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunControllerAlt.RemoteFunction:InvokeServer(ohthatscomplicated)
end)
game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunController.RemoteFunction:InvokeServer(ohthatscomplicated)
end)
end
end})

T1:AddButton({
Name = "Infinite Level",
Callback = function()
game.Players.LocalPlayer.leaderstats.Level.Value = 99999999999
end})

T1:AddButton({
Name = "Gamepasses",
Callback = function()
game.Players.LocalPlayer.Purchased.SpeedyZombie.Value = true
game.Players.LocalPlayer.Purchased.GhostZombie.Value = true
game.Players.LocalPlayer.Purchased.MageZombie.Value = true
game.Players.LocalPlayer.Purchased.ToxicZombie.Value = true
game.Players.LocalPlayer.Purchased.LightweightZombie.Value = true
game.Players.LocalPlayer.Purchased.CombatZombie.Value = true
game.Players.LocalPlayer.Purchased.CombustionZombie.Value = true
game.Players.LocalPlayer.Purchased.BoomBox.Value = true
game.Players.LocalPlayer.Purchased.BoomBoxPlus.Value = true
end})

T2:AddButton({
Name = "Immortal / Freeze all",
Callback = function()
local player=game.Players.LocalPlayer.Character
player.Humanoid:Remove()
Instance.new('Humanoid',player)	
end})

T3:AddButton({
Name = "Unlock All guns",
Callback = function()
game.Players.LocalPlayer.leaderstats.Level.Value = 1000000
end})

T3:AddButton({
Name = "Fly Bypass",
Callback = function()
repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local chr = plr.Character
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
for i,v in pairs(chr:GetChildren()) do
   if v:IsA('BasePart') and v.Name ~= "HumanoidRootPart" then
       chr:WaitForChild(v.Name).CollisionGroupId = 99
   elseif v:IsA('Accessory') then
       for g,c in pairs(v:GetChildren()) do
           if c:IsA('BasePart') then
               c.CollisionGroupId = 99
           end
       end
   end
end
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
for i,v in pairs(chr:GetChildren()) do
   if v:IsA('BasePart') and v.Name ~= "HumanoidRootPart" then
       chr:WaitForChild(v.Name).CollisionGroupId = 0
   elseif v:IsA('Accessory') then
       for g,c in pairs(v:GetChildren()) do
           if c:IsA('BasePart') then
               c.CollisionGroupId = 0
           end
       end
   end
end
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end})

T2:AddSlider({
Name = "Speed",
Min = 0,
Max = 1000,
Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "Speed",
Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end})

T2:AddSlider({
Name = "Jump",
Min = 0,
Max = 1000,
Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
Color = Color3.fromRGB(255,255,255),
Increment = 1,
ValueName = "Speed",
Callback = function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end})

T1:AddButton({
Name = "Kill All Zombie V1",
Callback = function()
local plr = game:GetService("Players").LocalPlayer local killEmAll = plr.Character[plr.EquipStorage.Primary.Value].GunController.RemoteFunction
for _,v in next, workspace[".ZombieStorage"]:GetChildren() do
    local Table = {["Name"] = plr.EquipStorage.Primary.Value, ["HumanoidTables"] = {[1] = {["HeadHits"] = 500000000,["THumanoid"] = v.Humanoid, ["BodyHits"] = 500000000}}}
    killEmAll:InvokeServer(Table)
end
end})

T1:AddButton({
Name = "Kill All Zombie V2",
Callback = function()
local plr = game:GetService("Players").LocalPlayer local killEmAll = plr.Character[plr.EquipStorage.Primary.Value].GunController.RemoteFunction
for _,v in next, workspace[".ZombieStorage"]:GetChildren() do
    local Table = {["Name"] = plr.EquipStorage.Primary.Value, ["HumanoidTables"] = {[1] = {["HeadHits"] = 500000000,["THumanoid"] = v.Humanoid, ["BodyHits"] = 500000000}}}
    killEmAll:InvokeServer(Table)
end
end})
