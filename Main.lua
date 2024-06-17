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
