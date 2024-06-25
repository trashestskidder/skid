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

--Save Setting
_G.Settings = {
	--Main Tab
    SelectWeapon = "Melee",
    FarmMode = "Auto Quest",
    AutoFarm = false,
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
Window:Minimize()

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Luminary Hub",
	Text = "Setting Loadded Successfully",
	Icon = "rbxassetid://15682649755",
	Duration = 2
})

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

--Check Quest
function CheckQuest()
    local p = game.Players.LocalPlayer.Data.Level.Value
    local q = 0
    for NameQuest, r in pairs(require(game.ReplicatedStorage.Quests)) do
        if NameQuest ~= "BartiloQuest" and NameQuest ~= "CitizenQuest" then
            for LevelQuest, s in pairs(r) do
                for t, u in pairs(s.Task) do
                    QuestReq2 = u
                end
                if QuestReq2 ~= 1 then
                    if s.LevelReq <= p and s.LevelReq >= q then
                        RealQuestData = {
                            NameQuest = NameQuest,
                            LevelQuest = LevelQuest,
                            LevelPassed = true,
                            NameMon = s.Name,
                            LevelReq = s.LevelReq
                        }
                        q = s.LevelReq
                    end
                end
            end
        end
    end
    if p >= 700 and World1 then
        Mon = "Galley Captain"
        LevelQuest = 2
        NameQuest = "FountainQuest"
    elseif p >= 1500 and World2 then
        Mon = "Water Fighter"
        LevelQuest = 2
        NameQuest = "ForgottenQuest"
    else
        Mon = RealQuestData.NameMon
        LevelQuest = RealQuestData.LevelQuest
        NameQuest = RealQuestData.NameQuest
    end
    NameMon = relmon[Mon] or Mon;
    CFrameQuest = QuestPoint[NameQuest] + Vector3.new(0, 100, 0)
    CFrameMon = EnemySpawn[NameMon]
end

relmon = {
    ["Gorilla King"] = "The Gorilla King",
    ["Mil. Soldier"] = "Military Soldier",
    ["Mil. Spy"] = "Military Spy",
    ["Swan's Pirate"] = "Swan Pirate"
}

EnemySpawn = {}
function SpawnPoint()
    for o, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v and v.HumanoidRootPart then
            if not EnemySpawn[v.Name] then
                EnemySpawn[v.Name] = v.HumanoidRootPart.CFrame
            end
        end
    end
    for o, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        if v.Name and not table.find(EnemySpawn, v.Name) then
            EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")] = v.CFrame
        end
    end
    for o, v in pairs(getnilinstances()) do
        if v and v.Name and not EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")] then
            if math.random(10, 70) == 25 then
                task.wait()
            end
            local w = gqgqj(v)
            if w then
                EnemySpawn[v.Name:gsub(" .Lv. %d+.", "")] = w
            end
        end
    end
end

function gqgqj(a)
    if a and a:FindFirstChild"HumanoidRootPart" then
        return a.HumanoidRootPart.CFrame
    end
    if a:GetAttribute("CFrame") then
        return a.CFrame
    end
end
SpawnPoint()

function CFrameQuest()
    QuestPoses = {}
    for x, v in pairs(getnilinstances()) do
        if v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and v.Head.QuestBBG.Title.Text == "QUEST" and v.Name ~= "Villager" then
            QuestPoses[v.Name] = v:WaitForChild"HumanoidRootPart".CFrame * CFrame.new(0, -2, 2)
        end
    end
    for x, v in pairs(game.Workspace.NPCs:GetDescendants()) do
        if v.Name == "QuestBBG" and v.Title.Text == "QUEST" and v.Parent.Parent.Name ~= "Villager" then
            QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.HumanoidRootPart.CFrame * CFrame.new(0, -2, 2)
        end
    end;
    DialoguesList = {}
    for x, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
        DialoguesList[v] = x
    end
    local y = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
    local z = {}
    for A, v in pairs(debug.getprotos(y)) do
        if #debug.getconstants(v) == 1 then
            table.insert(z, debug.getconstant(v, 1))
        end
    end
    local B = false
    local C = {}
    for A, v in pairs(debug.getconstants(y)) do
        if type(v) == "string" then
            if v == "Players" then
                B = false
            end;
            if not B then
                if v == "Blox Fruit Dealer" then
                    B = true
                end
            else
            end;
            if B then
                table.insert(C, v)
            end
        end
    end
    local D = {}
    QuestPoint = {}
    for A, v in pairs(C) do
        if QuestPoses[v] then
            D[z[A]] = C[A]
        end
    end
    for x, v in next, D do
        QuestPoint[x] = QuestPoses[v]
    end
    QuestPoint["SkyExp1Quest"] = CFrame.new(-7857.28516, 5544.34033, -382.321503, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
end
CFrameQuest()
CheckQuest()

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

--Esp
loadstring(game:HttpGet("https://raw.githubusercontent.com/bestskidderinroblox/source/main/Esp.lua"))()

--Inf Ability
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

--Inf Stamina
local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end

spawn(function()
    while true do
        wait(0.1)
        if InfiniteEnergy then
            local originalstam = LocalPlayer.Character.Energy.Value
            infinitestam()
        end
    end
end)

--No Dodge Coldown
function NoDodgeCool()
    if nododgecool then
        for i,v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

--Fly
function fly()
	local mouse = game:GetService("Players").LocalPlayer:GetMouse''
	localplayer = game:GetService("Players").LocalPlayer
	game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	local speedSET = 25
	local keys = {
		a = false,
		d = false,
		w = false,
		s = false
	}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition", torso)
		local gyro = Instance.new("BodyGyro", torso)
		pos.Name = "EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.CFrame = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand = true
			local new = gyro.CFrame - gyro.CFrame.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed = 1
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed = speed + speedSET
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed = speed + speedSET
			end
			if keys.d then
				new = new * CFrame.new(speed, 0, 0)
				speed = speed + speedSET
			end
			if keys.a then
				new = new * CFrame.new(-speed, 0, 0)
				speed = speed + speedSET
			end
			if speed > speedSET then
				speed = speedSET
			end
			pos.position = new.p
			if keys.w then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed * 15), 0, 0)
			elseif keys.s then
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15), 0, 0)
			else
				gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
			end
		until not Fly
		if gyro then
			gyro:Destroy()
		end
		if pos then
			pos:Destroy()
		end
		flying = false
		localplayer.Character.Humanoid.PlatformStand = false
		speed = 0
	end
	e1 = mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then
			flying = false
			e1:disconnect()
			e2:disconnect()
			return
		end
		if key == "w" then
			keys.w = true
		elseif key == "s" then
			keys.s = true
		elseif key == "a" then
			keys.a = true
		elseif key == "d" then
			keys.d = true
		end
	end)
	e2 = mouse.KeyUp:connect(function(key)
		if key == "w" then
			keys.w = false
		elseif key == "s" then
			keys.s = false
		elseif key == "a" then
			keys.a = false
		elseif key == "d" then
			keys.d = false
		end
	end)
	start()
end

--Click
function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

--Auto Haki
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

--Unequip Weapon
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end

--Equip Weapon
function EquipWeapon(ToolSe)
    if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

--Get Weapon
spawn(function()
    while wait() do
        local backpack = game:GetService("Players").LocalPlayer.Backpack
        for _, tool in pairs(backpack:GetChildren()) do  
            if tool:IsA("Tool") and tool:FindFirstChild("RemoteFunctionShoot") then
                SelectWeaponGun = tool.Name
                break
            end
        end
    end
end)

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

--Tween
function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(p)
    pcall(function()
        if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                wait(.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
            until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        end
    end)
end

function TelePPlayer(P)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/TweenSpeed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

local stoppos = {}
function topos(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local tween = game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
    function stoppos:Stop()
        tween:Cancel()
    end
    return stoppos
end

function fastpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 1000
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function slowpos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    Speed = 150
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

local stopboat = {}
function TPB(pos, boat)
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((boat.CFrame.Position - pos.Position).Magnitude/BoatSpeed, Enum.EasingStyle.Linear)
	tween = tween_s:Create(boat, info, {CFrame = pos})
    if (boat.CFrame.Position - pos.Position).Magnitude <= 25 then
        tween:Cancel()
    else
        tween:Play()
    end
	function stopboat:Stop()
		tween:Cancel()
	end
	return stopboat
end

function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/TweenSpeed, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()
	local tweenfunc = {}
	function tweenfunc:Stop()
		tween:Cancel()
	end
	return tweenfunc
end

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

--Spin Pos
spawn(function()
    while wait() do
        if _G.SpinPos then
            Pos = CFrame.new(0,PosY,-20)
            wait(0.1)
            Pos = CFrame.new(-20,PosY,0)
            wait(0.1)
            Pos = CFrame.new(0,PosY,20)
            wait(0.1)
            Pos = CFrame.new(20,PosY,0)
        else
            Pos = CFrame.new(0,PosY,0)
        end
    end
end)

--Velocity
spawn(function()
    while wait() do
        local player = game:GetService("Players").LocalPlayer
        local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and not humanoidRootPart:FindFirstChild("BodyClip") then
        local shouldActivate = _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member==true or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.SailBoat or _G.AutoFarmAllBoss or _G.TeleportKitsune or _G.RelzFishBoat
            if shouldActivate then
                local noclip = Instance.new("BodyVelocity")
                noclip.Name = "BodyClip"
                noclip.Parent = humanoidRootPart
                noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                noclip.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end
end)

spawn(function()
    while wait() do
        local player = game:GetService("Players").LocalPlayer
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
        local shouldActivate =_G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.Fish_Crew_Member==true or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.SailBoat or _G.AutoFarmAllBoss or _G.TeleportKitsune or _G.RelzFishBoat
            if shouldActivate then
                local state = humanoid:GetState()
                if state ~= Enum.HumanoidStateType.Seated and state ~= Enum.HumanoidStateType.Running and state ~= Enum.HumanoidStateType.Landed then
                    humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                end
            end
        end
    end
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NoClip or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate or Open_Color_Haki or _G.AutoTerrorshark or FarmShark or _G.farmpiranya or _G.SailBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoFarmChest or _G.ChestBypass or _G.Fish_Crew_Member==true or _G.AutoFarmAllBoss or _G.TeleportKitsune or _G.RelzFishBoat then
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            if character then
                for _, v in pairs(character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end
    end)
end)

--Auto Click
local function simulateClick()
    local virtualUser = game:GetService("VirtualUser")
    virtualUser:CaptureController()
    virtualUser:Button1Down(Vector2.new(0, 1, 0, 1))
end

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoClick then
        simulateClick()
    end
end)

--Anti Afk
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
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
local ConfigFarm = Main:AddSection({"Config Farm"})

local SelectWeaponDropdown = Main:AddDropdown({
	Name = "Select Weapon",
	Description = "Chọn vũ khí",
	Options = {"Melee", "Sword", "Fruit", "Gun"},
	Default = _G.Settings.SelectWeapon,
	Flag = _G.Settings.SelectWeapon,
	Callback = function(value)
        _G.SelectWeapon = value
		_G.Settings.SelectWeapon = value
		SaveSettings()
	end
})
task.spawn(function()
    while wait() do
        if _G.SelectWeapon then
            local weaponTypeMap = {
                Melee = "Melee",
                Sword = "Sword",
                Gun = "Gun",
                Fruit = "Blox Fruit"
            }
            local toolTip = weaponTypeMap[_G.SelectWeapon]
            if toolTip then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == toolTip and game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) then
                        _G.SelectWeapon = v.Name
                        break
                    end
                end
            end
        end
    end
end)

local MainFarm = Main:AddSection({"Main Farm"})

local FarmModeDropdown = Main:AddDropdown({
	Name = "Select Farm Mode",
	Description = "Chọn chế độ cày",
	Options = {"Normal", "Auto Quest", "Nearest"},
	Default = _G.Settings.FarmMode,
	Flag = _G.Settings.FarmMode,
	Callback = function(value)
        FarmMode = value
		_G.Settings.FarmMode = value
		SaveSettings()
	end
})

local AutoFarmSelectedModeToggle = Main:AddToggle({
	Name = "Auto Farm Selected Mode",
	Description = "Tự động cày chế độ đã chọn",
	Default = _G.Settings.AutoFarm
})
AutoFarmSelectedModeToggle:Callback(function(value)
    _G.AutoFarm = value
    _G.Settings.AutoFarm = value
    SaveSettings()
    if not value then
        StopTween(_G.AutoFarm)
    end
end)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local function NormalFarm()
    CheckQuest()
    local QuestTitle = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    if not string.find(QuestTitle, NameMon) then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    if not LocalPlayer.PlayerGui.Main.Quest.Visible then
        if BypassTP then
            if (LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                BTP(CFrameQuest)
            else
                TP1(CFrameQuest)
            end
        else
            TP1(CFrameQuest)
        end
        if (LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
            ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
        end
    else
        local enemies = Workspace.Enemies
        if enemies:FindFirstChild(Mon) then
            for _, v in pairs(enemies:GetChildren()) do
                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    if v.Name == Mon then
                        if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                            repeat task.wait(_G.FastAttackDelay)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                StartBring = true
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                AttackNoCD()
                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or not LocalPlayer.PlayerGui.Main.Quest.Visible
                            StartBring = false
                        end
                    end
                end
            end
        else
            TP1(CFrameMon)
            UnEquipWeapon(_G.SelectWeapon)
        end
    end
end
local function NeareastFarm()
    for _, v in pairs(Workspace.Enemies:GetChildren()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            if v.Name and (LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                repeat wait(_G.FastAttackDelay)
                    StartBring = true
                    AttackNoCD()
                    AutoHaki()
                    EquipWeapon(_G.SelectWeapon)
                    TP1(v.HumanoidRootPart.CFrame * Pos)
                    v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                    v.HumanoidRootPart.Transparency = 1
                    v.Humanoid.JumpPower = 0
                    v.Humanoid.WalkSpeed = 0
                    v.HumanoidRootPart.CanCollide = false
                    PosMon = v.HumanoidRootPart.CFrame
                    MonFarm = v.Name
                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or not Workspace.Enemies:FindFirstChild(v.Name)
                StartBring = false
            end
        end
    end
end
local function AutoQuestFarm()
    CheckQuest()
    local QuestTitle = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    if not string.find(QuestTitle, NameMon) then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    if not LocalPlayer.PlayerGui.Main.Quest.Visible then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
        if BypassTP then
            if (LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 1500 then
                BTP(CFrameMon)
            else
                TP1(CFrameMon)
            end
        else
            TP1(CFrameMon)
        end
    else
        local enemies = Workspace.Enemies
        if enemies:FindFirstChild(Mon) then
            for _, v in pairs(enemies:GetChildren()) do
                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    if v.Name == Mon then
                        if string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                            repeat task.wait(_G.FastAttackDelay)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                PosMon = v.HumanoidRootPart.CFrame
                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
                                StartBring = true
                                MonFarm = v.Name
                                AttackNoCD()
                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or not LocalPlayer.PlayerGui.Main.Quest.Visible
                            StartBring = false
                        end
                    end
                end
            end
        else
            TP1(CFrameMon)
            UnEquipWeapon(_G.SelectWeapon)
        end
    end
end
task.spawn(function()
    while true do
        if FarmMode == "Normal" and _G.AutoFarm then
            NormalFarm()
        elseif FarmMode == "Nearest" and _G.AutoFarm then
            NeareastFarm()
        elseif FarmMode == "Auto Quest" and _G.AutoFarm then
            AutoQuestFarm()
        end
    end
end)
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
