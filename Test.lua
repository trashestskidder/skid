local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
	Title = "Crazzy Hub V3",
	SubTitle = "by ! xSync",
	SaveFolder = "Crazzy_Hub"
})

local Info = Window:MakeTab({"Info", "info"})
local Main = Window:MakeTab({"Main", "home"})
local Set = Window:MakeTab({"Setting", "settings"})
local Farm = Window:MakeTab({"Farm", "swords"})
local Stats = Window:MakeTab({"Stats", "user-plus"})
local Tele = Window:MakeTab({"Teleport", "chevrons-right"})
local Player = Window:MakeTab({"Player", "users"})
local Fruit = Window:MakeTab({"Fruit", "apple"})
local Raid = Window:MakeTab({"Raid", "flame"})
local Shop = Window:MakeTab({"Shop", "shopping-cart"})
local Misc = Window:MakeTab({"Misc", "menu"})
local Race = Window:MakeTab({"Race", "activity"})
local Event = Window:MakeTab({"Event", "waves"})

local p = Instance.new("ScreenGui")
local q = Instance.new("TextButton")
local r = Instance.new("UICorner")
local s = Instance.new("ImageLabel")
r.Name = "sex"
r.Parent = q
s.Name = "sexgay"
s.Parent = q
s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
s.BackgroundTransparency = 1.000
s.BorderSizePixel = 0
s.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
s.Size = UDim2.new(0, 30, 0, 30)
s.Image = "rbxassetid://15689000757"
p.Name = "nung"
p.Parent = game.CoreGui
p.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
q.Name = "gay"
q.Parent = p
q.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
q.BackgroundTransparency = 0.1
q.BorderSizePixel = 0
q.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
q.Size = UDim2.new(0, 55, 0, 55)
q.Font = Enum.Font.SourceSans
q.Text = ""
q.TextColor3 = Color3.fromRGB(153, 51, 255)
q.TextSize = 20.000
q.Draggable = true
q.MouseButton1Click:Connect(function()
	Window:Minimize()
end)
----------------------------------------------------------------------------------------------------------------------Function
--Join Team
repeat 
	wait() 
until game.Players.LocalPlayer

_G.Team = _G.Team or "Pirate"
local ChooseTeamGui = game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
if ChooseTeamGui then
    repeat wait() until ChooseTeamGui.Visible
    local teamContainer
    if _G.Team == "Pirate" then
        teamContainer = ChooseTeamGui.Container.Pirates.Frame.TextButton
    elseif _G.Team == "Marine" then
        teamContainer = ChooseTeamGui.Container.Marines.Frame.TextButton
    else
        teamContainer = ChooseTeamGui.Container.Pirates.Frame.TextButton
    end
    for _, connection in ipairs(getconnections(teamContainer.Activated)) do
        connection.Function()
    end
end

--Check Place ID
if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
else
	game:Shutdown()
end

--Save Setting
_G.Settings = {
	--Main Tab

	--Setting Tab

	--Farm Tab

	--Stats Tab

	--Teleport Tab

	--Player Tab

	--Fruit Tab

	--Raid Tab

	--Shop Tab

	--Misc Tab

	--Race Tab

	--Event Tab
}

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Crazzy_Hub_V3") then
            makefolder("Crazzy_Hub_V3")
        end
        if not isfolder("Crazzy_Hub_V3/Blox Fruits/") then
            makefolder("Crazzy_Hub_V3/Blox Fruits/")
        end
        if not isfile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            for i, v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return 
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i, v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("Crazzy_Hub_V3/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return 
    end
end
LoadSettings()

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Crazzy Hub V3",
	Text = "Setting Loadded Successfully",
	Icon = "rbxassetid://15689000757",
	Duration = 2
})

--Notify
function Notify(text)
    local Notification = require(game.ReplicatedStorage.Notification)
    local notification = Notification.new(text)
    notification.Duration = 5
    notification:Display()
end

--Service
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")

--Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

--Equip Weapon
function EquipWeapon(Tool)
    local ToolInBackpack = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
    if ToolInBackpack then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolInBackpack)
    end
end  

--Unequip Weapon
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

--Check Quest
local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"
for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
	if v:IsA("Part") then
		local EnemySpawnsX2 = v:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
		local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
		local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end

local function QuestCheck()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            MobName = "Trainee"
            QuestName = "MarineQuest"
            QuestLevel = 1
            Mon = "Trainee"
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            MobName = "Bandit"
            Mon = "Bandit"
            QuestName = "BanditQuest1"
            QuestLevel = 1
            NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    if Lvl >= 210 and Lvl <= 249 then
        MobName = "Dangerous Prisoner"
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        Mon = "Dangerous Prisoner"
        NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        local matchingCFrames = {}
        local result = string.gsub(MobName, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")
        for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
            if v.Name == result4 then
                table.insert(matchingCFrames, v.CFrame)
            end
            MobCFrame = matchingCFrames
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1,v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if v1 > LevelRequire then
                    NPCPosition = i["CFrame"]
                    QuestLevel = i1
                    LevelRequire = v1
                end
                if #v["Levels"] == 3 and QuestLevel == 3 then
                    NPCPosition = i["CFrame"]
                    QuestLevel = 2
                    LevelRequire = v["Levels"][2]
                end
            end
        end
    end
    if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
        if _G.AutoFarm and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    end
    if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
        if _G.AutoFarm and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    end
    for i,v in pairs(Quests) do
        for i1,v1 in pairs(v) do
            if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                QuestName = i
                for i2,v2 in pairs(v1["Task"]) do
                    MobName = i2
                    Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                end
            end
        end
    end
    if QuestName == "MarineQuest2" then
        QuestName = "MarineQuest2"
        QuestLevel = 1
        MobName = "Chief Petty Officer"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    elseif QuestName == "ImpelQuest" then
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        MobName = "Dangerous Prisoner"
        Mon = "Dangerous Prisoner"
        LevelRequire = 210
        NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    elseif QuestName == "SkyExp1Quest" then
        if QuestLevel == 1 then
            NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        elseif QuestLevel == 2 then
            NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        end
    elseif QuestName == "Area2Quest" and QuestLevel == 2 then
        QuestName = "Area2Quest"
        QuestLevel = 1
        MobName = "Swan Pirate"
        Mon = "Swan Pirate"
        LevelRequire = 775
    end
    MobName = MobName:sub(1,#MobName)
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
            end
        end
    end
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
                Mon = a
            end
        end
    end
    local matchingCFrames = {}
    local result = string.gsub(MobName, "Lv. ", "")
    local result2 = string.gsub(result, "[%[%]]", "")
    local result3 = string.gsub(result2, "%d+", "")
    local result4 = string.gsub(result3, "%s+", "")
    for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
        if v.Name == result4 then
            table.insert(matchingCFrames, v.CFrame)
        else
            table.insert(matchingCFrames, nil)
        end
        MobCFrame = matchingCFrames
    end
    return {
        [1] = QuestLevel,
        [2] = NPCPosition,
        [3] = MobName,
        [4] = QuestName,
        [5] = LevelRequire,
        [6] = Mon,
        [7] = MobCFrame,
        [8] = MonQ,
        [9] = MobCFrameNuber
    }
end

--Velocity
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function onStepped()
    if _G.AutoFarm or _G.TptoKisuneIsland or _G.TptoEventIsland or _G.TptoKisuneshrine or _G.ColletEmber or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or _G.AutoSaber or _G.AutoPole or _G.TeleportIsland or _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2 or _G.AutoDarkCoat or _G.AutoSwanGlasses or _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or _G.AutoFactory or _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation or _G.AutoGodHuman or _G.AutoCavander or _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or Tushita_Quest2 or Tushita_Quest1 or _G.TeleporttoSeaBeast or _G.TPTOBOAT or Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or _G.AutoRaids or _G.AutoNextPlace then
        if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            local Noclip = Instance.new("BodyVelocity")
            Noclip.Name = "BodyClip"
            Noclip.Parent = LocalPlayer.Character.HumanoidRootPart
            Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
            Noclip.Velocity = Vector3.new(0, 0, 0)
        end
        if not LocalPlayer.Character:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.new(0, 86, 255)
            Highlight.OutlineColor = Color3.new(0, 86, 255)
            Highlight.Parent = LocalPlayer.Character
        end
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        if LocalPlayer.Character:FindFirstChild("Highlight") then
            LocalPlayer.Character:FindFirstChild("Highlight"):Destroy()
        end
    end
end
RunService.Stepped:Connect(onStepped)

--Bring Mob
task.spawn(function()
	while true do task.wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

local function handleMob(v, PosMon)
    if not string.find(v.Name, "Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= _G.BringDistance then
        if InMyNetWork(v.HumanoidRootPart) then
            v.HumanoidRootPart.CFrame = PosMon
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            v.HumanoidRootPart.Transparency = 1
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            v.Humanoid:ChangeState(11)
            v.Humanoid:ChangeState(14)
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end

local function bringMobs()
    if not BringMob then return end
    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
            handleMob(v, PosMon)
        else
            print("Invalid mob:", v)
        end
    end
end

task.spawn(function()
    while task.wait() do
        bringMobs()
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringDistance then 
            return true
        end
        return false
    end
end

--No Stun
local function onStunChanged(stun)
    if stun and stun:IsA("IntValue") then
        stun.Value = 0
    end
end

local function setupStunListener()
    local character = game.Players.LocalPlayer.Character
    if character then
        local stun = character:FindFirstChild("Stun")
        if stun then
            stun.Changed:Connect(function()
                onStunChanged(stun)
            end)
        end
    end
end
setupStunListener()

--Destroy Effect
task.spawn(function()
    local _hookfunc = (hookfunction or hookfunc or function(...) end)
    local Container = ReplicatedStorage.Effect.Container
    local CameraShaker = require(ReplicatedStorage.Util.CameraShaker)
    local Death = require(Container:FindFirstChild("Death"))
    local Respawn = require(Container:FindFirstChild("Respawn"))
    _hookfunc(Death, function() 
        return nil 
    end)
    _hookfunc(Respawn, function() 
        return nil 
    end)
    CameraShaker:Stop()
end)

--Fast Attack
FastGay = loadstring(game:HttpGet("https://raw.githubusercontent.com/bestskidderinroblox/source/main/Fast%20Attack.lua"))()

function AttackFunction()
    FastGay:Attack()
end

spawn(function()
    while wait() do
        if FastNoCD then
            FastGay:InputValue(70, 5)
            FastGay:Attack(true)
        else
            FastGay:Attack(false)
        end
    end
end)

--Abadone Quest
function Com(com, ...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm" .. com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

--Tween
local TweenService = game:GetService("TweenService")
local Client = game.Players.LocalPlayer

function IsAlive(v)
    return v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0
end

function GetDistance(position1, position2)
    return (position1 - position2).Magnitude
end

function CheckHeight(part)
    local hrp = Client.Character and Client.Character:FindFirstChild("HumanoidRootPart")
    if part and hrp then
        local distanceThreshold = 50
        local distance = hrp.Position.Y - part.Position.Y
        if distance <= distanceThreshold then
            hrp.CFrame = hrp.CFrame * CFrame.new(0, 100, 0)
        end
    end
end

function DisableCollisions(object, enable)
    local parts = object.Character:GetDescendants()
    for _, v in ipairs(parts) do
        if v:IsA("BasePart") then
            v.CanCollide = enable
        end
    end
end

function StopTween()
    if _G.tween then
        _G.tween:Cancel()
        _G.tween = nil
    end
    if _G.tween_2 then
        _G.tween_2:Cancel()
        _G.tween_2 = nil
    end
end

function TP1(pos, customDistance)
    if not IsAlive(Client.Character) then
        repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
        task.wait(0.75)
    end

    local Distance = GetDistance(pos.Position, Client.Character.HumanoidRootPart.Position)
    local val = Instance.new("CFrameValue")
    val.Value = Client.Character.HumanoidRootPart.CFrame
    local tween = TweenService:Create(val, TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Value = pos})
    
    _G.tween_2 = tween
    tween:Play()
    
    local completed
    tween.Completed:Connect(function()
        completed = true
    end)
    
    while not completed do
        if Distance < 200 or not _G.AutoFarm or Client.Character.Humanoid.Health <= 0 then
            StopTween()
            Client.Character.HumanoidRootPart.CFrame = pos
            FastNoCD = true
            break
        end
        if customDistance and Distance <= customDistance then
            StopTween()
            Client.Character.HumanoidRootPart.CFrame = pos
            FastNoCD = true
            break
        end
        Client.Character.HumanoidRootPart.CFrame = val.Value
        task.wait()
    end
    val:Destroy()
end

function TP2(RealTarget, customDistance, Specical)
    local Distance = GetDistance(RealTarget.Position, Client.Character.HumanoidRootPart.Position)
    if not IsAlive(Client.Character) then
        StopTween()
        repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
        task.wait(0.75)
    end
    if customDistance and Distance <= customDistance then
        StopTween()
        Client.Character.HumanoidRootPart.CFrame = RealTarget
        FastNoCD = true
        return
    elseif Distance <= 200 then
        StopTween()
        Client.Character.HumanoidRootPart.CFrame = RealTarget
        FastNoCD = true
        return
    end
    if not Specical then
        bypassTeleport(RealTarget, Distance, 1000)
    end
    local cameraPart = workspace.Camera.Part
    if Distance > 1000 then
        CheckHeight(cameraPart)
    end
    local info = TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Client.Character.HumanoidRootPart, info, {CFrame = RealTarget})
    
    _G.tween = tween
    tween:Play()
end

--Hop
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour

local function TPReturner()
    local Site
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    if Site.nextPageCursor then
        foundAnything = Site.nextPageCursor
    end
    local num = 0
    for _, v in pairs(Site.data) do
        local ID = tostring(v.id)
        local Possible = true
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                        break
                    end
                elseif tonumber(actualHour) ~= tonumber(Existing) then
                    AllIDs = {actualHour}
                end
                num = num + 1
            end
            if Possible then
                table.insert(AllIDs, ID)
                task.wait()
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                wait(4)
            end
        end
    end
end

local function Teleport()
    while task.wait() do
        TPReturner()
        if foundAnything ~= "" then
            TPReturner()
        end
    end
end

local function joinNew(OtherServers)
    local HttpService = game:GetService("HttpService")
    if not isfile('servers.sss') then
        writefile('servers.sss', HttpService:JSONEncode({}))
    end
    local dontJoin = HttpService:JSONDecode(readfile('servers.sss'))
    for _, Server in ipairs(OtherServers["data"]) do
        if Server.id ~= game.JobId then
            local j = true
            for _, c in ipairs(dontJoin) do
                if c == Server.id then
                    j = false
                    break
                end
            end
            if j then
                table.insert(dontJoin, Server["id"])
                writefile("servers.sss", HttpService:JSONEncode(dontJoin))
                wait()
                return Server['id']
            end
        end
    end
    return nil
end

local function Hop()
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer
    local HttpService = game:GetService("HttpService")
    local TPService = game:GetService("TeleportService")
    local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    local server = joinNew(OtherServers)
    if not server then
        writefile("servers.sss", HttpService:JSONEncode({}))
        server = joinNew(OtherServers)
    end
    if server then
        TPService:TeleportToPlaceInstance(game.PlaceId, server)
    end
end

--Click
function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

--Get Fighing Style
function GetFightingStyle(Style)
	ReturnText = ""
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

--Check Mastery
function CheckMasteryWeapon(NameWe, MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

--Get Weapon Inventory
function GetWeaponInventory(Weaponname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

--Get Material
function GetMaterial(matname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

--All Material
local worldMaterials = {
    World1 = {
        "Magma Ore",
        "Leather",
        "Scrap Metal",
        "Angel Wings",
        "Fish Tail"
    },
    World2 = {
        "Magma Ore",
        "Scrap Metal",
        "Radioactive Material",
        "Vampire Fang",
        "Mystic Droplet"
    },
    World3 = {
        "Mini Tusk",
        "Fish Tail",
        "Scrap Metal",
        "Dragon Scale",
        "Conjured Cocoa",
        "Demonic Wisp",
        "Gunpowder"
    }
}

local AllMaterial
if World1 then
    AllMaterial = worldMaterials.World1
elseif World2 then
    AllMaterial = worldMaterials.World2
elseif World3 then
    AllMaterial = worldMaterials.World3
end

if AllMaterial then
    table.sort(AllMaterial)
end

--Check Material
local worldMaterials = {
    World1 = {
        ["Magma Ore"] = {
            MaterialMob = { "Military Soldier", "Military Spy" },
            CFrameMon = CFrame.new(-5815, 84, 8820)
        },
        ["Leather"] = {
            MaterialMob = { "Brute" },
            CFrameMon = CFrame.new(-1145, 15, 4350)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Brute" },
            CFrameMon = CFrame.new(-1145, 15, 4350)
        },
        ["Angel Wings"] = {
            MaterialMob = { "God's Guard" },
            CFrameMon = CFrame.new(-4698, 845, -1912)
        },
        ["Fish Tail"] = {
            MaterialMob = { "Fishman Warrior", "Fishman Commando" },
            CFrameMon = CFrame.new(61123, 19, 1569)
        }
    },
    World2 = {
        ["Magma Ore"] = {
            MaterialMob = { "Magma Ninja" },
            CFrameMon = CFrame.new(-5428, 78, -5959)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Swan Pirate" },
            CFrameMon = CFrame.new(878, 122, 1235)
        },
        ["Radioactive Material"] = {
            MaterialMob = { "Factory Staff" },
            CFrameMon = CFrame.new(295, 73, -56)
        },
        ["Vampire Fang"] = {
            MaterialMob = { "Vampire" },
            CFrameMon = CFrame.new(-6033, 7, -1317)
        },
        ["Mystic Droplet"] = {
            MaterialMob = { "Water Fighter", "Sea Soldier" },
            CFrameMon = CFrame.new(-3385, 239, -10542)
        }
    },
    World3 = {
        ["Mini Tusk"] = {
            MaterialMob = { "Mythological Pirate" },
            CFrameMon = CFrame.new(-13545, 470, -6917)
        },
        ["Fish Tail"] = {
            MaterialMob = { "Fishman Raider", "Fishman Captain" },
            CFrameMon = CFrame.new(-10993, 332, -8940)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Jungle Pirate" },
            CFrameMon = CFrame.new(-12107, 332, -10549)
        },
        ["Dragon Scale"] = {
            MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" },
            CFrameMon = CFrame.new(6594, 383, 139)
        },
        ["Conjured Cocoa"] = {
            MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel" },
            CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
        },
        ["Demonic Wisp"] = {
            MaterialMob = { "Demonic Soul" },
            CFrameMon = CFrame.new(-9507, 172, 6158)
        },
        ["Gunpowder"] = {
            MaterialMob = { "Pistol Billionaire" },
            CFrameMon = CFrame.new(-469, 74, 5904)
        }
    }
}

local function CheckMaterial(v1)
    local materialData
    if World1 then
        materialData = worldMaterials.World1[v1]
    elseif World2 then
        materialData = worldMaterials.World2[v1]
    elseif World3 then
        materialData = worldMaterials.World3[v1]
    end

    if materialData then
        MaterialMob = materialData.MaterialMob
        CFrameMon = materialData.CFrameMon
    end
end

--Custom FindFristChild
local function CustomFindFirstChild(tablename)
	for i, v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end
----------------------------------------------------------------------------------------------------------------------Main Tab

----------------------------------------------------------------------------------------------------------------------Setting Tab

----------------------------------------------------------------------------------------------------------------------Farm Tab

----------------------------------------------------------------------------------------------------------------------Stats Tab

----------------------------------------------------------------------------------------------------------------------Teleport Tab

----------------------------------------------------------------------------------------------------------------------Player Tab

----------------------------------------------------------------------------------------------------------------------Fruit Tab

----------------------------------------------------------------------------------------------------------------------Raid Tab

----------------------------------------------------------------------------------------------------------------------Shop Tab

----------------------------------------------------------------------------------------------------------------------Misc Tab

----------------------------------------------------------------------------------------------------------------------Race Tab

----------------------------------------------------------------------------------------------------------------------Event Tab
