local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
	Title = "Luminary Hub",
	SubTitle = "by ! xSync",
	SaveFolder = "Luminary_Hub"
})

local Info = Window:MakeTab({"Info Tab", "info"})
local Main = Window:MakeTab({"Main Tab", "home"})
local Set = Window:MakeTab({"Setting Tab", "settings"})
local Farm = Window:MakeTab({"Farm Tab", "swords"})
local Stats = Window:MakeTab({"Stats Tab", "user-plus"})
local Tele = Window:MakeTab({"Teleport Tab", "chevrons-right"})
local Player = Window:MakeTab({"Player Tab", "users"})
local Fruit = Window:MakeTab({"Fruit Tab", "apple"})
local Raid = Window:MakeTab({"Raid Tab", "flame"})
local Shop = Window:MakeTab({"Shop Tab", "shopping-cart"})
local Misc = Window:MakeTab({"Misc Tab", "menu"})
local Race = Window:MakeTab({"Race Tab", "activity"})
local Event = Window:MakeTab({"Event Tab", "waves"})

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
s.Image = "rbxassetid://15682649755"
p.Name = "nung"
p.Parent = game.CoreGui
p.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
q.Name = "gay"
q.Parent = p;
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

_G.Team = "Pirate"
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if _G.Team == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif _G.Team == "Marine" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			else
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
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
    AutoFarmLevel = false,
    AutoFarmLevelFast = true,
    AutoFarmNearest = false,
	--Setting Tab
    SafeMode = false,
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
        if not isfolder("Luminary_Hub") then
            makefolder("Luminary_Hub")
        end
        if not isfolder("Luminary_Hub/Blox Fruits/") then
            makefolder("Luminary_Hub/Blox Fruits/")
        end
        if not isfile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Luminary_Hub/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
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
        if not isfile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Luminary_Hub/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i, v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return 
    end
end
LoadSettings()

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Luminary Hub",
	Text = "Setting Loadded Successfully",
	Icon = "rbxassetid://15682649755",
	Duration = 2
})

--Notify
function Notify(text)
    local Notification = require(game.ReplicatedStorage.Notification)
    local notification = Notification.new(text)
    notification.Duration = 10
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
Tabel = {}
function GetCake_CFrame_Mon()
	local targetMonsters = {"Baking Staff", "Head Baker", "Cake Guard", "Cookie Crafter"}
	local enemySpawns = workspace.EnemySpawns:GetChildren()
	local randomSpawnIndex = math.random(1, #enemySpawns)
	local selectedSpawn = enemySpawns[randomSpawnIndex]
	
	for _,_v1 in pairs(targetMonsters) do
		local result = string.gsub(_v1, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		local monQName = result4
		
		if selectedSpawn.Name == result4 then
			return selectedSpawn.CFrame
		end
	end
end

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

--Bring mob
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

task.spawn(function()
    while true do
        task.wait()
        if BringMob then
            local enemies = game.Workspace.Enemies:GetChildren()
            for i, v in pairs(enemies) do
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
        end
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

--Destroy effect
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local targetNames = {CurvedRing = true, SlashHit = true, SwordSlash = true, SlashTail = true, Sounds = true}
local targetEffectNames = {Death = true, Spawn = true}

local function destroyTargetParts()
    for _, v in pairs(Workspace["_WorldOrigin"]:GetChildren()) do
        if targetNames[v.Name] then
            v:Destroy()
        end
    end
end

local function destroyTargetEffects()
    for _, v in pairs(ReplicatedStorage.Effect.Container:GetChildren()) do
        if targetEffectNames[v.Name] then
            v:Destroy()
        end
    end
end

local function modifyDescendantProperties()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            local mt = getrawmetatable(v)
            if mt then
                local oldDestroy = mt.__index.Destroy
                hookfunction(oldDestroy, function(self, ...)
                    if self == v then
                        return nil
                    else
                        return oldDestroy(self, ...)
                    end
                end)
            end
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        end
    end
end

spawn(function()
    while _G.DelteEffect do
        task.wait()
        destroyTargetParts()
        destroyTargetEffects()
        modifyDescendantProperties()
    end
end)

--Fast Attack
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local CombatFramework = require(LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = debug.getupvalues(CombatFramework)[2]

local function BladeHits(range)
    local hits = {}
    for _, enemy in ipairs(Workspace.Enemies:GetChildren()) do
        local humanoid = enemy:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.Health > 0 then
            local rootPart = humanoid.RootPart
            if rootPart and LocalPlayer:DistanceFromCharacter(rootPart.Position) < range then
                table.insert(hits, rootPart)
            end
        end
    end
    return hits
end

local function AddAttack(hitTargets)
    local activeController = CombatFrameworkR.activeController
    if activeController and activeController.equipped and #hitTargets > 0 then
        local agrs1 = debug.getupvalue(activeController.attack, 5)
        local agrs2 = debug.getupvalue(activeController.attack, 6)
        local agrs3 = debug.getupvalue(activeController.attack, 4)
        local agrs4 = debug.getupvalue(activeController.attack, 7)
        local agrs5 = (agrs1 * 798405 + agrs3 * 727595) % agrs2
        local agrs6 = agrs3 * 798405
        agrs5 = (agrs5 * agrs2 + agrs6) % 1099511627776
        agrs1 = math.floor(agrs5 / agrs2)
        agrs3 = agrs5 - agrs1 * agrs2
        agrs4 = agrs4 + 1
        debug.setupvalue(activeController.attack, 5, agrs1)
        debug.setupvalue(activeController.attack, 6, agrs2)
        debug.setupvalue(activeController.attack, 4, agrs3)
        debug.setupvalue(activeController.attack, 7, agrs4)

        local blade = activeController.currentWeaponModel
        if blade then
            ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", blade.Name)
            activeController.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
            ReplicatedStorage.Remotes.Validator:FireServer(math.floor(agrs5 / 1099511627776 * 16777215), agrs4)
            ReplicatedStorage.RigControllerEvent:FireServer("hit", hitTargets, 1, "")
        end
    end
end

local function AttackFunc()
    local delay = math.random(0.1, 0.3)
    task.wait(delay)
    AddAttack(BladeHits(65))
end

local lastTick = tick()
local function RunAttack()
    if (tick() - lastTick) >= _G.FastAttackDelay then
        task.spawn(AttackFunc)
        lastTick = tick()
    end
end

local function FastAttackRoutine()
    while _G.FastAttack do
        task.wait(0.05)
        require(ReplicatedStorage.Util.CameraShaker):Stop()
        local combatFramework = require(LocalPlayer.PlayerScripts.CombatFramework)
        local controller = debug.getupvalues(combatFramework)[2]
        if typeof(controller) == "table" then
            local activeController = controller.activeController
            activeController.timeToNextAttack = 0
            activeController.active = false
            activeController.timeToNextBlock = 0
            activeController.focusStart = 0
            activeController.increment = 4
            activeController.blocking = false
            activeController.attacking = false
            activeController.humanoid.AutoRotate = false
        end
    end
end
task.spawn(FastAttackRoutine)

RunService.RenderStepped:Connect(function()
    if FastAttack or _G.FastAttack then
        RunAttack()
    end
end)

function AttackPlayers()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = getAllBladeHitsPlayers(60)
        if #bladehit > 0 then
            local AcAttack8 = debug.getupvalue(ac.attack, 5)
            local AcAttack9 = debug.getupvalue(ac.attack, 6)
            local AcAttack7 = debug.getupvalue(ac.attack, 4)
            local AcAttack10 = debug.getupvalue(ac.attack, 7)
            local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
            local NumberAc13 = AcAttack7 * 798405
            NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
            AcAttack8 = math.floor(NumberAc12 / AcAttack9)
            AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
            AcAttack10 = AcAttack10 + 1
            debug.setupvalue(ac.attack, 5, AcAttack8)
            debug.setupvalue(ac.attack, 6, AcAttack9)
            debug.setupvalue(ac.attack, 4, AcAttack7)
            debug.setupvalue(ac.attack, 7, AcAttack10)
            for _, anim in pairs(ac.animator.anims.basic) do
                anim:Play(0.01, 0.01, 0.01)
            end
            local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if tool and ac.blades and ac.blades[1] then
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
            end
        end
    end
end
spawn(function()
    while wait() do
        if AttackPlayers then
            AttackPlayers()
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

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local function IsAlive(character)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function GetDistance(pos1, pos2)
    return (pos1 - pos2).Magnitude
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
    local batch = {}
    local batchSize = 0
    for _, v in ipairs(parts) do
        if v:IsA("BasePart") then
            table.insert(batch, v)
            batchSize = batchSize + 1
            if batchSize >= 100 then
                for _, part in ipairs(batch) do
                    part.CanCollide = enable
                end
                batch = {}
                batchSize = 0
            end
        end
    end
    for _, part in ipairs(batch) do
        part.CanCollide = enable
    end
end

function GetIsLand(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = targetPos
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos.Position
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
        RealTarget = RealTarget.p
    end
    local ReturnValue
    local CheckInOut = math.huge
    if Client.Team then
        for _, v in pairs(worldorigin.PlayerSpawns:FindFirstChild(tostring(Client.Team)):GetChildren()) do
            local ReMagnitude = GetDistance(RealTarget, v:GetModelCFrame().p);
            if ReMagnitude < CheckInOut then
                CheckInOut = ReMagnitude
                ReturnValue = v.Name
            end
        end
        if ReturnValue then
            return ReturnValue
        end
    end
end

function selectSpawnPoint(object)
    local closestSpawn = nil
    local closestDistance = math.huge
    for _, model in pairs(worldorigin.PlayerSpawns[tostring(Client.Team)]:GetChildren()) do
        if model:IsA("Model") then
            for _, spawn in pairs(model:GetChildren()) do
                if spawn:IsA("Part") then
                    if object and spawn then
                        local distance = GetDistance(spawn.Position, object.Position)

                        if distance < closestDistance then
                            closestSpawn = spawn
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end
    return closestSpawn
end

local PlaceId = game.PlaceId
function FindNearestTeleporter(playerPosition)
    local locations
    if PlaceId == 2753915549 then
        locations = {
            ["SkyLandsI"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["SkyLandsII"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["UnderWater"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["Whirlpool"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif PlaceId == 4442272183 then
        locations = {
            ["SwanEntrance"] = Vector3.new(-286.989075, 306.137909, 592.882751)
        }
    end
    local nearestLocation
    local minDistance = math.huge
    local playerRootPosition = Client.Character.HumanoidRootPart.Position
    for locationName, locationPosition in pairs(locations) do
        local distance = GetDistance(locationPosition, playerPosition.Position)
        if distance < minDistance then
            minDistance = distance
            nearestLocation = locationName
        end
    end
    local playerToNearest = GetDistance(playerRootPosition, playerPosition.Position)
    if minDistance <= playerToNearest then
        return locations[nearestLocation]
    end
end

function requestEntrance(aJ)
    CancelTween()
    local args = { "requestEntrance", aJ }
    Com("F_", table.unpack(args))
    local Old = Client.Character.HumanoidRootPart.CFrame
    Client.Character.HumanoidRootPart.CFrame = CFrame.new(Old.X, Old.Y, Old.Z)
    task.wait(0.3)
    return
end

function bypassTeleport(object, distance, distanceValue)
    if _G.BypassTP then
        if distance <= distanceValue and _G.tween then
            _G.tween:Play()
            return
        end
        CancelTween()
        stop = false
        if not Client or not Client.Character then
            return
        end
        local objectIsLand = tostring(GetIsLand(object))
        if objectIsLand == "DressTown" or objectIsLand == "Sky2" or objectIsLand == "Undertown" then
            local pos = FindNearestTeleporter(object)
            if pos then
                requestEntrance(pos)
            end
        elseif Client.Data:FindFirstChild("LastSpawnPoint") and Client.Data.LastSpawnPoint.Value == objectIsLand then
            Client.Character.Humanoid.Health = 0
            task.wait(0.1)
            repeat task.wait() until Client.Character.Humanoid.Health > 0
        else
            if not IsAlive(Client.Character) then
                CancelTween()
                repeat task.wait() until Client.Character.Humanoid.Health > 0
                task.wait(0.75)
            end
            if Client.Character.Humanoid.Health > 0 then
                local elapsedTime = 0
                local heartbeatConnection
                local function onUpdate(deltaTime)
                    elapsedTime = elapsedTime + deltaTime
                    Client.Character.HumanoidRootPart.CFrame = selectSpawnPoint(object).CFrame
                    Com("F_", "SetSpawnPoint")
                    if elapsedTime >= 0.075 or stop then
                        heartbeatConnection:Disconnect()
                    end
                end
                heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(onUpdate)
                stop = true
            end
            task.wait(0.04)
            Client.Character.Humanoid.Health = 0
            repeat task.wait() until Client.Character.Humanoid.Health > 0
            task.wait(0.1)
            Com("F_", "SetSpawnPoint")
        end
        task.wait(0.2)
    end
end

local function TP1(pos, customDistance)
    while not LocalPlayer.Character or not IsAlive(LocalPlayer.Character) do
        task.wait()
    end
    local humanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then 
        return 
    end
    local val = Instance.new("CFrameValue")
    val.Value = humanoidRootPart.CFrame
    local Distance = GetDistance(pos.Position, humanoidRootPart.Position)
    local tween = TweenService:Create(val, TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Value = pos})
    _G.tween_2 = tween
    _G.tween_2:Play()
    local completed = false
    _G.tween_2.Completed:Connect(function()
        completed = true
    end)
    while not completed do
        Distance = GetDistance(pos.Position, humanoidRootPart.Position)
        if Distance < 1 or LocalPlayer.Character.Humanoid.Health <= 0 then
            _G.tween_2:Cancel()
            humanoidRootPart.CFrame = pos
            FastAttack = true
            break
        end
        if customDistance and Distance <= customDistance then
            _G.tween_2:Cancel()
            humanoidRootPart.CFrame = pos
            FastAttack = true
            break
        end
        humanoidRootPart.CFrame = val.Value
        task.wait()
    end
    val:Destroy()
end

function TP2(RealTarget, customDistance, Specical)
    local Distance = GetDistance(RealTarget.Position, Client.Character.HumanoidRootPart.Position)
    if not IsAlive(Client.Character) then
        CancelTween()
        repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
        task.wait(0.75)
    end
    if customDistance then
        if Distance <= customDistance then
            CancelTween()
            Client.Character.HumanoidRootPart.CFrame = RealTarget
            FastAttack = true
            return
        end
    else
        if Distance <= 200 then
            CancelTween()
            Client.Character.HumanoidRootPart.CFrame = RealTarget
            FastAttack = true
            return
        end
    end
    if not Specical then
        bypassTeleport(RealTarget, Distance, 1000)
    end
    local cameraPart = workspace.Camera.Part
    if Distance > 1000 then
        CheckHeight(cameraPart)
    end
    local info = TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Client.Character.HumanoidRootPart, info, { CFrame = RealTarget })
    _G.tween = tween
    tween:Play()
end

function CancelTween()
    if _G.tween then
		_G.tween_2:Cancel()
        _G.tween = nil
    end
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
----------------------------------------------------------------------------------------------------------------------Info Tab
Info:AddDiscordInvite({
	Name = "Luminary Hub",
	Logo = "rbxassetid://15674916964",
	Invite = "https://discord.gg/J9zNHMNP7s"
})

local Skid = Info:AddParagraph({"This script 100% skid 😏😏😏"})

local HopSivi = Info:AddButton({"Hop Sivi", function()
	Hop()
end})
----------------------------------------------------------------------------------------------------------------------Main Tab
local MainFarm = Main:AddSection({"Main Farm"})

local AutoFarmLevelToggle = Main:AddToggle({
	Name = "Auto Farm Level",
	Description = "Tự động cày cấp",
	Default = _G.Settings.AutoFarmLevel
})
AutoFarmLevelToggle:Callback(function(value)
    _G.AutoFarm = value
    _G.Settings.AutoFarmLevel = value
    SaveSettings()
    CancelTween()
end)
AttackRandomType_MonCFrame = 1
spawn(function()
	while wait() do 
		AttackRandomType_MonCFrame = math.random(1, 5)
		wait(0.3)
	end
end)
local SetCFarme = 1
spawn(function()
	while wait() do
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		if _G.AutoFarm then  
			if _G.AutoFarmFast and (MyLevel >= 15 and MyLevel <= 300) then
				Auto_Farm_Level_Fast()
				return
			else
				if QuestC.Visible == true then
					local questCheck = QuestCheck()
					local targetEnemyName = questCheck[3]
					local questTitle = questCheck[6]
					if game:GetService("Workspace").Enemies:FindFirstChild(targetEnemyName) then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == targetEnemyName and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								local humanoid = v.Humanoid
								local rootPart = v.HumanoidRootPart
								if humanoid.Health > 0 then
									repeat
										task.wait()
										if _G.Auto_CFrame then
											SetCFarme = 1
										end
										if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, questTitle) then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
										else
											PosMon = rootPart.CFrame
											rootPart.Size = Vector3.new(60, 60, 60)
											rootPart.CanCollide = false
											humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											BringMob = true
											_G.FastType = "0.1"
											EquipWeapon(_G.SelectWeapon)
											rootPart.Transparency = 1
											TP1(rootPart.CFrame * MethodFarm)
											if not _G.AutoFarm or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO then
												_G.FastAttack = true
											end
										end
									until not _G.AutoFarm or not v.Parent or humanoid.Health <= 0 or not QuestC.Visible or not v:FindFirstChild("HumanoidRootPart")
								end
							end
						end
					else
						if _G.Auto_CFrame and not _G.AutoFarmFast then
							TP1(questCheck[7][SetCFarme] * MethodFarm)
							
							if (questCheck[7][SetCFarme].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
								SetCFarme = SetCFarme + 1
								if SetCFarme > #questCheck[7] then
									SetCFarme = 1
								end
								wait(0.5)
							end
						else
							if not _G.AutoFarmFast then
								local randomPositionOffset = {
									CFrame.new(0, 30, 20),
									CFrame.new(0, 30, -20),
									CFrame.new(20, 30, 0),
									CFrame.new(0, 30, -20),
									CFrame.new(-20, 30, 0)
								}
								TP1(questCheck[7][1] * randomPositionOffset[AttackRandomType_MonCFrame])
							end
						end
					end
				else
					TP1(questCheck[2])
					if (questCheck[2].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
						BringMob = false
						wait(0.2)
						game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", questCheck[4], questCheck[1])
						wait(0.5)
						TP1(questCheck[7][1] * MethodFarm)
					end
				end
			end
		end
	end
end)

if World1 then
	local AutoFarmLevelFastToggle = Main:AddToggle({
		Name = "Auto Farm Level Fast",
		Description = "Tự động cày cấp Nhanh",
		Default = _G.Settings.AutoFarmLevelFast
	})
	AutoFarmLevelFastToggle:Callback(function(value)
		_G.AutoFarmFast = value
        _G.Settings.AutoFarmLevelFast = value
        SaveSettings()
	end)
end
_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
local AllPlayersTableSkipFarm = {}
function Auto_Farm_Level_Fast()
    local PlayersAll = game.Players:GetPlayers()
    local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
    local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    local Player = string.split(quest, " ")[2]
    getgenv().SelectPly = Player
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
    local CFrameMon = CFrame.new(-7719.66895, 5611.42334, -1445.98816, 0.906745553, -1.43169192e-08, -0.421678245, 5.939971e-08, 1, 9.37764852e-08, 0.421678245, -1.10078972e-07, 0.906745553)
    if _G.AutoFarm and MyLevel >= 15 and MyLevel <= 69 and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    end
    if MyLevel >= 15 and MyLevel <= 69 then
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v.Name == "Royal Squad" then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    repeat
                        task.wait()
                        v.HumanoidRootPart.CanCollide = false
                        v.Humanoid.WalkSpeed = 0
                        v.Head.CanCollide = false
                        BringMob = true
                        EquipWeapon(_G.SelectWeapon)
                        if MyLevel >= 70 and MyLevel <= 310 then
                            if not QuestC.Visible then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                            end
                        end
                        _G.FastType = "0.3"
                        PosMon = v.HumanoidRootPart.CFrame
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v.HumanoidRootPart.Transparency = 1
                        TP1(v.HumanoidRootPart.CFrame * MethodFarm)
                        if not _G.AutoFarm or _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.SuperFastAttack then
                            _G.FastAttack = true
                        end
                    until not v.Parent or not _G.AutoFarm or v.Humanoid.Health <= 0
                    TP1(CFrameMon)
                end
            else
                BringMob = false
                TP1(CFrameMon)
            end
        end
    elseif MyLevel >= 70 and MyLevel <= 310 then
        if not QuestC.Visible then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
        elseif QuestC.Visible then
            if string.find(quest, "Defeat") then
                repeat
                    task.wait()
                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                    end
                    EquipWeapon(_G.SelectWeapon)
                    local targetPlayer = game:GetService("Players")[getgenv().SelectPly]
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local targetRootPart = targetPlayer.Character.HumanoidRootPart
                        TP1(targetRootPart.CFrame * CFrame.new(0, 0, 5))
                        targetRootPart.Size = Vector3.new(120, 120, 120)
                        if (targetRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6 then
                            AttackPlayers = true
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        end
                        if not _G.AutoFarm or _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.SuperFastAttack then
                            _G.FastAttack = true
                        end
                    end
                until targetPlayer.Character.Humanoid.Health <= 0 or MyLevel >= 310
            end
        end
    end
end
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.BringMob then
            for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoFarm and BringMob and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= _G.BringDistance then
                    local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                    local humanoid = v:FindFirstChild("Humanoid")
                    if humanoidRootPart and humanoid then
                        humanoidRootPart.CFrame = PosMon
                        humanoidRootPart.CanCollide = false
                        humanoidRootPart.Size = Vector3.new(60, 60, 60)
                        local animator = humanoid:FindFirstChild("Animator")
                        if animator then
                            animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end
    end)
end)

local AutoFarmNearestMonsterToggle = Main:AddToggle({
	Name = "Auto Farm Nearest Monster",
	Description = "Tự động cày quái gần nhất",
	Default = _G.Settings.AutoFarmNearest
})
AutoFarmNearestMonsterToggle:Callback(function(value)
    _G.NeareastFarm = value
    _G.Settings.AutoFarmNearest = value
    SaveSettings() 
    CancelTween()
end)
spawn(function()
	while wait() do
		if _G.NeareastFarm then
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
					local humanoid = v.Humanoid
					local rootPart = v.HumanoidRootPart
					local player = game.Players.LocalPlayer
					local playerChar = player.Character
					local playerRoot = playerChar and playerChar:FindFirstChild("HumanoidRootPart")
					if humanoid.Health > 0 and playerRoot and (rootPart.Position - playerRoot.Position).magnitude <= 1500 then
						repeat
							game:GetService("RunService").Heartbeat:Wait()
							EquipWeapon(_G.SelectWeapon)
							if not playerChar:FindFirstChild("HasBuso") then
								local args = {[1] = "Buso"}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = rootPart.CFrame
							rootPart.CanCollide = false
							humanoid.WalkSpeed = 0
							v.Head.CanCollide = false
							rootPart.Size = Vector3.new(80, 80, 80)
							humanoid:ChangeState(11)
							humanoid:ChangeState(14)
							humanoid:ChangeState(16)
							BringMob = true
							FastAttack = true
							TP1(rootPart.CFrame * MethodFarm)
							if not FastAttack then
								local virtualUser = game:GetService('VirtualUser')
								virtualUser:CaptureController()
								virtualUser:Button1Down(Vector2.new(1280, 672))
							end
							PosMon = rootPart.CFrame
						until not _G.NeareastFarm or not v.Parent or humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
					end
				end
			end
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------Setting Tab
local SafeModeToggle = Set:AddToggle({
	Name = "Safe Mode",
	Description = "Chế độ an toàn",
	Default = _G.Settings.SafeMode
})
SafeModeToggle:Callback(function(value)
	_G.SafeMode = value
	_G.Settings.SafeMode = value
	SaveSettings()
end)
spawn(function()
	while _G.SafeMode do
		task.wait()
		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			local HealthPercent = (game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth) * 100
			if HealthPercent < 20 then
				game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 100, 0))
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Luminary Hub",
					Text = "Safe Mode Running",
					Icon = "rbxassetid://15682649755",
					Duration = 1
				})
			end
		end
	end
end)
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
