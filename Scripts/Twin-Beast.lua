

wait(0.016666666666667)
script.Archivable = false
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "effecsfsafzx"
local demon = Instance.new("Model", Character)
demon.Name = "demdemd"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local do2target = nil
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it = Instance.new
vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  
  return a:lerp(b, t)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

local co1 = 3
local co2 = 10
local co3 = 15
local co4 = 30
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local maxEnergy = 100
local Energy = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("Royal purple").Color
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansLight
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.93, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.86, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.79, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.72, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[z] Hunt")
text2 = makelabel(framesk2, "[x] Ravage")
text3 = makelabel(framesk3, "[c] Capture")
text4 = makelabel(framesk4, "[v] Flower of Fear")
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
--frame = 0.1
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  
  coroutine.resume(coroutine.create(function()
    
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

CreatePart2 = function(Parent, Material, Reflectance, Transparency, PartType, BColor, Name, Size)
  
  if PartType == "Part" then
    local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
    RemoveOutlines(Part)
    return Part
  else
    do
      if PartType == "WedgePart" then
        local Part = Create("WedgePart")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
        RemoveOutlines(Part)
        return Part
      end
    end
  end
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "Handle", Vector3.new(1, 2, 1))
HandleWeld = CreateWeld(m, Character["Left Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.598956585, -0.401195407, 0, 0, 1, 0.25881803, -0.965926111, 0, 0.965926111, 0.25881803, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.150000006))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.858075142, -0.276378155, -0.49209857, 0.353552133, -0.866025269, 0.353555113, 0.707108736, -9.03335206e-07, -0.707104981, 0.612371027, 0.500000358, 0.61237365))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142959999, -0.79026103, -0.577523232, 0, 0, 1, 0.0581610166, -0.998307228, 0, 0.998307228, 0.0581610166, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.400000006, 1, 0.100000001))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.857914209, 0.258751988, -0.512362957, 0.353553236, -0.866025567, -0.353553236, -0.707106471, 3.09715034e-07, -0.707107246, 0.612372994, 0.499999791, -0.6123721))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.508293927, 0.581420183, 0.355297565, -1, 0, 0, 0, -0.694275975, -0.719708979, 0, -0.719708979, 0.694275975))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, -0.605236769, -0.322324991, 1, 0, 0, 0, 0.719708979, -0.694275975, 0, 0.694275975, 0.719708979))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.0117408261, -0.729162693, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.208000004, 0.47299999, 0.47299999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.123879015, -0.278857708, -0.00617899979, 0.965925336, -0.2588211, 0, 0.2588211, 0.965925336, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.445813209, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.223450184, 0.0305250883, -0.00618699985, -0.25881803, 0.965926111, 0, -0.965926111, -0.25881803, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.407537222, 0.0663063526, -0.00618699985, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.664211631, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0544009209, 0.0101571083, -0.00617499975, 0.499998987, 0.866025984, 0, -0.866025984, 0.499998987, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.212381959, -0.663311005, -0.00618499983, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.730365157, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0184851885, 0.339620829, -0.0061809998, 0.715359032, -0.698757052, 0, 0.698757052, 0.715359032, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.834142029, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.627083898, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.280005217, -0.363016367, -0.00617299974, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.329999983))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.00543988496, -0.414242506, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.453824013, -0.291407824, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.83414197, 0.388499111, 1.00999999))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51018995, -0.50767684, 0.297928989, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117785633, -0.903934956, 0.39272213, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.677359819, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0118038058, 0.689624906, 0.570050001, 0.707103848, 0, 0.707109809, -0.707109809, 0, 0.707103848, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510767996, -0.508222818, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285520971, -0.664801836, -0.00591700012, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.728394926, 0.35408181, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159419954, -0.695495844, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.796342552, 0.65287286, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.144507021, 0.270431995, -0.00702500017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0228680372, -0.903097868, -0.00617699977, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.157143831, -0.295579016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.475480139, 0.404664904, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.236273766, -0.56151557, -0.0061809998, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000811070204, -0.902295828, 0.381639034, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(1, 1, 1))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.618730307, -0.382281303, 0, 0, 1, 0.36670509, -0.93033725, 0, 0.93033725, 0.36670509, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.709999979, 0.100000001))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000812500715, 0.678554535, 0.570062876, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.274916351, 0.495625556, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.386464, 0.349603176, -0.00702300016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285515964, -0.215442896, -0.00591900013, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51019901, -0.156597853, 0.297930986, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(1.06224263, 1.11860847, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00774800777, 0.0171630383, -0.0061809998, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510194004, -0.67681098, 0.297922999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "WedgePart", "Royal purple", "ClawMaterial", Vector3.new(1.0507766, 0.342107773, 0.210450009))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00591100007, -0.468749046, 0.193565369, 0, 0, 1, -0.700001419, -0.714141428, 0, 0.714141428, -0.700001419, 0))
CreateMesh("SpecialMesh", ClawMaterial, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00134065747, 0.207813978, 0.709334135, 0.707106829, 0, -0.707106829, 0, -1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947299972, -0.114370823, -0.440932035, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.561885834, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.411995441, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00891099963, -0.798730135, 0.476718009, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.04586256, 0.210449979, 0.27767837))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00726700015, 0.0232260227, 0.391721964, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.764251173, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.385787576, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509499991, -0.792718172, 0.456955969, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509600015, -0.696686029, 0.42363596, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012203753, 0.206679821, 0.707822442, -0.707106352, 0, -0.707107365, 0, -1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947900023, -0.695355177, 0.440928012, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
MotorOne = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 1, "Royal purple", "MotorOne", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorOneWeld = CreateWeld(m, Handle, MotorOne, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.165818453, -0.00628910959, -0.978227913, -0.0732169896, -0.996971905, -0.0261989962, -0.542171299, 0.0618378855, -0.83798945, 0.837072074, -0.0471507274, -0.545057178))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorOne, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413149118, -0.00709122419, -1.08955288, 0.90752846, 5.51342964e-07, -0.419990718, -1.73971057e-06, 1, -2.44379044e-06, 0.419990718, 2.95042992e-06, 0.90752852))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorOne, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.205875158, -0.00710588694, -1.48987699, 0.747897685, -5.36441803e-07, -0.663814127, -1.66893005e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897744))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151987076, 0.549069643, -0.614215612, -1.19581819e-06, 1, 1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151856542, -0.490994453, -0.295432806, -1.19581819e-06, 1, 1.37090683e-06, -0.961226821, -7.5250864e-07, -0.27575928, -0.27575931, -1.57952309e-06, 0.96122694))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.015198648, 0.650615692, -0.406500697, -1.19581819e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152282119, 0.624634504, 0.129744053, -1.19581819e-06, 1, 1.37090683e-06, -0.832109034, -2.5331974e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0152042508, 0.944105864, 0.894237399, 1.19581819e-06, -1, -1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorOne, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121058, -0.0170745254, -0.650540829, 1.00000012, 0, 3.7252903e-09, 0, 1, 0, 3.7252903e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151966214, -1.64906764, 1.03426063, -1.19581819e-06, 1, 1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252064466, -1.54980397, -0.844281435, 1.19581819e-06, -1, -1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorTwo = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 1, "Royal purple", "MotorTwo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorTwoWeld = CreateWeld(m, Handle, MotorTwo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0479729176, -0.503670454, -0.786706924, 0.0261989962, -0.996971905, -0.0732169896, 0.83798945, 0.0618378855, -0.542171299, 0.545057178, -0.0471507274, 0.837072074))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413152218, -0.00709152222, -1.08955348, 0.90752846, 5.66244125e-07, -0.419990689, -1.74157321e-06, 1, -2.47359276e-06, 0.419990718, 2.98023224e-06, 0.907528639))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.20587635, -0.00710582733, -1.4898783, 0.747897685, -5.36441803e-07, -0.663814127, -1.6707927e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897804))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151982307, 0.549069643, -0.614216566, -1.19395554e-06, 1, 1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151848793, -0.490990877, -0.295432806, -1.19395554e-06, 1, 1.37090683e-06, -0.961226821, -7.74860382e-07, -0.27575931, -0.27575925, -1.63912773e-06, 0.961226881))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151979923, 0.650617838, -0.406501412, -1.19395554e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152257681, 0.624636889, 0.129745722, -1.19395554e-06, 1, 1.37090683e-06, -0.832109034, -2.38418579e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.015203476, 0.944107533, 0.894238472, 1.19395554e-06, -1, -1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorTwo, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121142, -0.0170750618, -0.650540113, 1.00000012, -1.86264515e-09, 4.65661287e-09, -1.86264515e-09, 1, 0, 4.65661287e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151972771, -1.64906967, 1.03426158, -1.19395554e-06, 1, 1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252062082, -1.54980803, -0.844281912, 1.19395554e-06, -1, -1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorThumb = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Royal purple", "MotorThumb", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbWeld = CreateWeld(m, Handle, MotorThumb, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.436262846, -0.542311668, -0.983556807, -0.068211019, -0.995336354, 0.0682120249, -0.707106829, -7.08211871e-07, -0.707106709, 0.703809023, -0.0964656472, -0.703809083))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumb, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607737899, 0.0110911727, 0.0515184402, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumb, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723732, 0.990283549, 1.41561031e-06, -0.13906303, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.13906303, 8.94069672e-08, 0.990283489))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumb, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025633, 0.0210601687, -0.0396541655, 0.908135235, 2.08616257e-06, -0.418677092, -1.47148967e-06, 1.00000012, 1.75833702e-06, 0.418677121, -9.23871994e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129690766, -0.393394113, 0.191975117, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775405, -0.706632137, 0.168079853, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299531221, -0.294105291, -0.00194394588, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598301, 0.0969114304, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
MotorThumbTwo = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Royal purple", "MotorThumbTwo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbTwoWeld = CreateWeld(m, Handle, MotorThumbTwo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.444597721, 0.423756033, -0.897562623, -0.0682120249, -0.995336354, -0.068211019, 0.707106709, -7.08211871e-07, -0.707106829, 0.703809083, -0.0964656621, 0.703809023))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumbTwo, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607738018, 0.0110911727, 0.0515185595, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723612, 0.990283549, 1.42306089e-06, -0.139062777, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.139062807, 1.1920929e-07, 0.990283608))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025394, 0.0210601091, -0.0396541059, 0.908135235, 2.08616257e-06, -0.418677092, -1.72480941e-06, 1, 1.16229057e-06, 0.418677121, -3.57627869e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.012969017, -0.393394232, 0.191974878, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775107, -0.706632137, 0.168079972, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299596786, -0.29410553, -0.00194442272, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598063, 0.0969111919, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
MagniHit = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "MagniHit", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MagniHitWeld = CreateWeld(m, Character.HumanoidRootPart, MagniHit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01003361, -0.230025291, 0.070048213, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "Handle", Vector3.new(1, 2, 1))
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "Handle", Vector3.new(1, 2, 1))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.598956585, -0.401195407, 0, 0, 1, 0.25881803, -0.965926111, 0, 0.965926111, 0.25881803, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.150000006))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.858075142, -0.276378155, -0.49209857, 0.353552133, -0.866025269, 0.353555113, 0.707108736, -9.03335206e-07, -0.707104981, 0.612371027, 0.500000358, 0.61237365))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142959999, -0.79026103, -0.577523232, 0, 0, 1, 0.0581610166, -0.998307228, 0, 0.998307228, 0.0581610166, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.400000006, 1, 0.100000001))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.857914209, 0.258751988, -0.512362957, 0.353553236, -0.866025567, -0.353553236, -0.707106471, 3.09715034e-07, -0.707107246, 0.612372994, 0.499999791, -0.6123721))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.508293927, 0.581420183, 0.355297565, -1, 0, 0, 0, -0.694275975, -0.719708979, 0, -0.719708979, 0.694275975))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, -0.605236769, -0.322324991, 1, 0, 0, 0, 0.719708979, -0.694275975, 0, 0.694275975, 0.719708979))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.0117408261, -0.729162693, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.208000004, 0.47299999, 0.47299999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.123879015, -0.278857708, -0.00617899979, 0.965925336, -0.2588211, 0, 0.2588211, 0.965925336, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.445813209, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.223450184, 0.0305250883, -0.00618699985, -0.25881803, 0.965926111, 0, -0.965926111, -0.25881803, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.407537222, 0.0663063526, -0.00618699985, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.664211631, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0544009209, 0.0101571083, -0.00617499975, 0.499998987, 0.866025984, 0, -0.866025984, 0.499998987, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.212381959, -0.663311005, -0.00618499983, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.730365157, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0184851885, 0.339620829, -0.0061809998, 0.715359032, -0.698757052, 0, 0.698757052, 0.715359032, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.834142029, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.627083898, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.280005217, -0.363016367, -0.00617299974, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.329999983))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.00543988496, -0.414242506, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.453824013, -0.291407824, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.83414197, 0.388499111, 1.00999999))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51018995, -0.50767684, 0.297928989, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117785633, -0.903934956, 0.39272213, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.677359819, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0118038058, 0.689624906, 0.570050001, 0.707103848, 0, 0.707109809, -0.707109809, 0, 0.707103848, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510767996, -0.508222818, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285520971, -0.664801836, -0.00591700012, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.728394926, 0.35408181, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159419954, -0.695495844, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.796342552, 0.65287286, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.144507021, 0.270431995, -0.00702500017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0228680372, -0.903097868, -0.00617699977, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.157143831, -0.295579016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.475480139, 0.404664904, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.236273766, -0.56151557, -0.0061809998, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000811070204, -0.902295828, 0.381639034, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(1, 1, 1))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.618730307, -0.382281303, 0, 0, 1, 0.36670509, -0.93033725, 0, 0.93033725, 0.36670509, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.709999979, 0.100000001))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000812500715, 0.678554535, 0.570062876, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.274916351, 0.495625556, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.386464, 0.349603176, -0.00702300016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285515964, -0.215442896, -0.00591900013, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51019901, -0.156597853, 0.297930986, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(1.06224263, 1.11860847, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00774800777, 0.0171630383, -0.0061809998, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510194004, -0.67681098, 0.297922999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "WedgePart", "Royal purple", "ClawMaterial", Vector3.new(1.0507766, 0.342107773, 0.210450009))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00591100007, -0.468749046, 0.193565369, 0, 0, 1, -0.700001419, -0.714141428, 0, 0.714141428, -0.700001419, 0))
CreateMesh("SpecialMesh", ClawMaterial, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00134065747, 0.207813978, 0.709334135, 0.707106829, 0, -0.707106829, 0, -1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947299972, -0.114370823, -0.440932035, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.561885834, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.411995441, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00891099963, -0.798730135, 0.476718009, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.04586256, 0.210449979, 0.27767837))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00726700015, 0.0232260227, 0.391721964, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.764251173, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.385787576, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509499991, -0.792718172, 0.456955969, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509600015, -0.696686029, 0.42363596, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012203753, 0.206679821, 0.707822442, -0.707106352, 0, -0.707107365, 0, -1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947900023, -0.695355177, 0.440928012, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
MotorThree = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 1, "Royal purple", "MotorThree", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThreeWeld = CreateWeld(m, Handle, MotorThree, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.165818453, -0.00628910959, -0.978227913, -0.0732169896, -0.996971905, -0.0261989962, -0.542171299, 0.0618378855, -0.83798945, 0.837072074, -0.0471507274, -0.545057178))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThree, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413149118, -0.00709122419, -1.08955288, 0.90752846, 5.51342964e-07, -0.419990718, -1.73971057e-06, 1, -2.44379044e-06, 0.419990718, 2.95042992e-06, 0.90752852))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThree, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.205875158, -0.00710588694, -1.48987699, 0.747897685, -5.36441803e-07, -0.663814127, -1.66893005e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897744))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151987076, 0.549069643, -0.614215612, -1.19581819e-06, 1, 1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151856542, -0.490994453, -0.295432806, -1.19581819e-06, 1, 1.37090683e-06, -0.961226821, -7.5250864e-07, -0.27575928, -0.27575931, -1.57952309e-06, 0.96122694))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.015198648, 0.650615692, -0.406500697, -1.19581819e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152282119, 0.624634504, 0.129744053, -1.19581819e-06, 1, 1.37090683e-06, -0.832109034, -2.5331974e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0152042508, 0.944105864, 0.894237399, 1.19581819e-06, -1, -1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThree, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121058, -0.0170745254, -0.650540829, 1.00000012, 0, 3.7252903e-09, 0, 1, 0, 3.7252903e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151966214, -1.64906764, 1.03426063, -1.19581819e-06, 1, 1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252064466, -1.54980397, -0.844281435, 1.19581819e-06, -1, -1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorFour = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 1, "Royal purple", "MotorFour", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorFourWeld = CreateWeld(m, Handle, MotorFour, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0479729176, -0.503670454, -0.786706924, 0.0261989962, -0.996971905, -0.0732169896, 0.83798945, 0.0618378855, -0.542171299, 0.545057178, -0.0471507274, 0.837072074))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorFour, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413152218, -0.00709152222, -1.08955348, 0.90752846, 5.66244125e-07, -0.419990689, -1.74157321e-06, 1, -2.47359276e-06, 0.419990718, 2.98023224e-06, 0.907528639))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorFour, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.20587635, -0.00710582733, -1.4898783, 0.747897685, -5.36441803e-07, -0.663814127, -1.6707927e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897804))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151982307, 0.549069643, -0.614216566, -1.19395554e-06, 1, 1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151848793, -0.490990877, -0.295432806, -1.19395554e-06, 1, 1.37090683e-06, -0.961226821, -7.74860382e-07, -0.27575931, -0.27575925, -1.63912773e-06, 0.961226881))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151979923, 0.650617838, -0.406501412, -1.19395554e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152257681, 0.624636889, 0.129745722, -1.19395554e-06, 1, 1.37090683e-06, -0.832109034, -2.38418579e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.015203476, 0.944107533, 0.894238472, 1.19395554e-06, -1, -1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorFour, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121142, -0.0170750618, -0.650540113, 1.00000012, -1.86264515e-09, 4.65661287e-09, -1.86264515e-09, 1, 0, 4.65661287e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151972771, -1.64906967, 1.03426158, -1.19395554e-06, 1, 1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252062082, -1.54980803, -0.844281912, 1.19395554e-06, -1, -1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorThumbThree = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Royal purple", "MotorThumbThree", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbThreeWeld = CreateWeld(m, Handle, MotorThumbThree, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.436262846, -0.542311668, -0.983556807, -0.068211019, -0.995336354, 0.0682120249, -0.707106829, -7.08211871e-07, -0.707106709, 0.703809023, -0.0964656472, -0.703809083))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumbThree, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607737899, 0.0110911727, 0.0515184402, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbThree, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723732, 0.990283549, 1.41561031e-06, -0.13906303, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.13906303, 8.94069672e-08, 0.990283489))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbThree, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025633, 0.0210601687, -0.0396541655, 0.908135235, 2.08616257e-06, -0.418677092, -1.47148967e-06, 1.00000012, 1.75833702e-06, 0.418677121, -9.23871994e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129690766, -0.393394113, 0.191975117, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775405, -0.706632137, 0.168079853, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299531221, -0.294105291, -0.00194394588, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumbThree, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598301, 0.0969114304, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
MotorThumbFour = CreatePart(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Royal purple", "MotorThumbFour", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbFourWeld = CreateWeld(m, Handle, MotorThumbFour, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.444597721, 0.423756033, -0.897562623, -0.0682120249, -0.995336354, -0.068211019, 0.707106709, -7.08211871e-07, -0.707106829, 0.703809083, -0.0964656621, 0.703809023))
Claw = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumbFour, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607738018, 0.0110911727, 0.0515185595, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbFour, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723612, 0.990283549, 1.42306089e-06, -0.139062777, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.139062807, 1.1920929e-07, 0.990283608))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Royal purple", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbFour, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025394, 0.0210601091, -0.0396541059, 0.908135235, 2.08616257e-06, -0.418677092, -1.72480941e-06, 1, 1.16229057e-06, 0.418677121, -3.57627869e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.012969017, -0.393394232, 0.191974878, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775107, -0.706632137, 0.168079972, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299596786, -0.29410553, -0.00194442272, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumbFour, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598063, 0.0969111919, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
MagniHit = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "MagniHit", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MagniHitWeld = CreateWeld(m, Character.HumanoidRootPart, MagniHit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01003361, -0.230025291, 0.070048213, 0, 0, -1, 0, 1, 0, 1, 0, 0))
Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "Handle", Vector3.new(1, 2, 1))
local CBlade = {}
local CBladeWelds = {}
for _,c in pairs(m:children()) do
  if c.className == "Part" then
    table.insert(CBlade, R67_PC6072)
  end
end
for _,c in pairs(m:children()) do
  if c.className == "Weld" then
    table.insert(CBladeWelds, R67_PC6072)
    print(R66_PC6093)
  end
end
-- NIGH-OMNI FATAL ERROR at PC6105: Re-wrote register: R67 in 'AssignReg'

-- NIGH-OMNI FATAL ERROR at PC6106: Re-wrote register: R67 in 'AssignReg'

Hit = CreatePart(demon, Enum.Material.SmoothPlastic, 0, 0, "Really black", "demohn", Vector3.new(5, 0.200000003, 5))
-- NIGH-OMNI FATAL ERROR at PC6120: Re-wrote register: R66 in 'AssignReg'

-- NIGH-OMNI FATAL ERROR at PC6134: Re-wrote register: R66 in 'AssignReg'

HitWeld = CreateWeld(demon, Character.HumanoidRootPart, Hit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -3.50004387, 0.0299530029, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CreateMesh("SpecialMesh", Hit, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(3, 4, 3))
FakeMotor = CreatePart(demon, Enum.Material.SmoothPlastic, 0, 1, "Really black", "FakeMotor", Vector3.new(2.01999998, 0.2016, 2.36000013))
FakeMotorWeld = CreateWeld(demon, Hit, FakeMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0199999809, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(demon, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -5.06998634, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(2.5, 10, 2.5))
Part = CreatePart(demon, Enum.Material.SmoothPlastic, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -7.1599884, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(1, 10, 1))
TornadoHat = CreatePart(demon, Enum.Material.SmoothPlastic, 0.20000000298023, 0.5, "Black", "TornadoHat", Vector3.new(3, 0.400000006, 3))
TornadoHatWeld = CreateWeld(demon, FakeMotor, TornadoHat, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00997924805, -1.65001106, -0.0699994564, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", TornadoHat, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1051557", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
local DBlade = {}
local DBladeWelds = {}
for _,c in pairs(demon:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
for _,c in pairs(demon:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
demon.Parent = nil
Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            else
              do
                if Type == "DarkUp" then
                  coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                  local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                else
                  do
                    if Type == "Snare" then
                      local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      do
                        if Type == "Freeze" then
                          local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                          local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                          hit.Parent.Torso.Anchored = true
                          coroutine.resume(coroutine.create(function(Part)
    
    swait(1.5)
    Part.Anchored = false
  end
), hit.Parent.Torso)
                          game:GetService("Debris"):AddItem(BodPos, 3)
                          game:GetService("Debris"):AddItem(BodGy, 3)
                        end
                        do
                          local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                          game:GetService("Debris"):AddItem(debounce, Delay)
                          c = Instance.new("ObjectValue")
                          c.Name = "creator"
                          c.Value = Player
                          c.Parent = h
                          game:GetService("Debris"):AddItem(c, 0.5)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

CloudEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

attackone = function()
  
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos(sine / 8))), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.8)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 14, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attacktwo = function()
  
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(5), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-30), math.rad(-130), math.rad(-130 + 10 * math.cos(sine / 8))), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.6)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(-20)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-40), math.rad(80), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 14, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-50), math.rad(-120), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(50), math.rad(200), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorThreeWeld.C0 = clerp(MotorThreeWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorFourWeld.C0 = clerp(MotorFourWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbThreeWeld.C0 = clerp(MotorThumbThreeWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbFourWeld.C0 = clerp(MotorThumbFourWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackthree = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 13, 0, "Normal", "199149221")
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 1)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-110), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-60), math.rad(-140), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-140), math.rad(0), math.rad(-80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 13, 0, "Normal", "199149221")
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 1)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-20), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(40), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-70), math.rad(-110), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(50), math.rad(230), math.rad(10)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
	MotorThreeWeld.C0 = clerp(MotorThreeWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorFourWeld.C0 = clerp(MotorThreeWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbThreeWeld.C0 = clerp(MotorThumbThreeWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbFourWeld.C0 = clerp(MotorThumbFourWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackfive = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-60), math.rad(-100), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.7)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-100), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-260), math.rad(-100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attack = false
end

attacksix = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-60), math.rad(-100), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.7)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-100), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-260), math.rad(-100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attack = false
end


function attackseven()
	attack = true
	for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0,0,0) * angles(math.rad(-10),math.rad(0),math.rad(0)), 0.5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
		RW.C0 = clerp(RW.C0, cf(1.5,0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-260), math.rad(-100)),0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5,0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-260), math.rad(-100)),0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
	end
	--[[ Left Slashes (Angled Style)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-3.5, 0, -5) * angles(math.rad(90), 0, math.rad(-20)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-2, 0, -5) * angles(math.rad(90), 0, math.rad(-10)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-0.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	--]]
	--[[ Right Slashes (Angled Style)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(3.5, 0, -5) * angles(math.rad(90), 0, math.rad(20)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(2, 0, -5) * angles(math.rad(90), 0, math.rad(10)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	--]]
	-- Left Slashes (Cave Style)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-3.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-2, 0, -5) * angles(math.rad(110), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(-0.5, 0, -5) * angles(math.rad(130), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	
	-- Right Slashes (Cave Style)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(3.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(2, 0, -5) * angles(math.rad(110), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(0.5, 0, -5) * angles(math.rad(130), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
	
	MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
	for i = 0, 1 , 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0,0,0) * angles(math.rad(10),math.rad(0),math.rad(0)), 0.5)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
		RW.C0 = clerp(RW.C0, cf(1.5,0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(100), math.rad(-260), math.rad(-100)),0.4)
		LW.C0 = clerp(LW.C0, cf(-1.5,0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(100), math.rad(-260), math.rad(-100)),0.3)
		RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
	end
	attack = false
end

function attackeight()
	attack = true
	attack = false
end

findNearestTorso = function(pos)
  
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        local dohit = true
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = false
        end
        if dohit == true then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
  end
  return torso, dist
end

qaeoshotdog = function()
  
  attack = true
  local x, y, z, newpos = nil, nil, nil, nil
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 0.5, 0.1, 0.5, 0.05)
  do
    if do2target ~= nil and do2target.Parent.Humanoid.PlatformStand ~= true then
      local dist = (Torso.Position - do2target.Position).magnitude
      if dist < 50 then
        Humanoid.WalkSpeed = 0
        RootPart.CFrame = do2target.CFrame * cf(0, 50, 5)
      else
        RootPart.CFrame = RootPart.CFrame * cf(0, 50, 5)
      end
    end
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      if do2target ~= nil then
        newpos = vt(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z)
        MoveCF = cf(RootPart.Position, newpos)
        local mpos = Torso.CFrame * angles(0, 0, 0)
        local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
        x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.28)
      end
      do
        do
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(30), math.rad(50)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          -- NIGH-OMNI FATAL ERROR at PC435: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
      MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    hit = nil
    for i = 1, 1 do
      if hit == nil then
        swait()
      end
      hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
    end
    local hit = nil
    while hit == nil do
      swait()
      hit = rayCast(RightArm.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    end
    hit = rayCast(RightArm.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    do
      if hit ~= nil then
        local ref = CreatePart(effect, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "Effect", vt())
        ref.Anchored = true
--        ref.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(ref, 3)
        for i = 1, 10 do
          Col = hit.BrickColor
          local groundpart = CreatePart(effect, hit.Material, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
          groundpart.Anchored = true
          groundpart.CanCollide = true
--          groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
          game:GetService("Debris"):AddItem(groundpart, 5)
        end
        CreateSound("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
--[[        WaveEffect(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)]]
        MagniDamage(ref, 9, 20, 23, math.random(10, 20), "Knockdown")
      end
      CloudEffect(BrickColor.new("Black"), RightArm.CFrame, 1, 1, 1, 0.5, 3, 0.5, 0.05)
      CloudEffect(BrickColor.new("Black"), RightArm.CFrame, 1, 1, 1, 1, 1, 1, 0.05)
      Humanoid.WalkSpeed = 16
      attack = false
    end
  end
end

dead = function()
  
  attack = true
  local x, y, z, newpos = nil, nil, nil, nil
  for i = 0, 1, 0.1 do
    swait()
    if do2target ~= nil then
      newpos = vt(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z)
      MoveCF = cf(RootPart.Position, newpos)
      local mpos = Torso.CFrame * angles(0, 0, 0)
      local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
      x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
	  y = RootPart.CFrame:toEulerAnglesXYZ()
	  z = RootPart.CFrame:toEulerAnglesXYZ()
      RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x,y,z) * angles(0, 3.14, 0) * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.4)
    else
      do
        do
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.28)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(30), math.rad(50)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      end
    end
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 0.5, 0.1, 0.5, 0.05)
  do
    if do2target ~= nil then
      local dist = (Torso.Position - do2target.Position).magnitude
      if dist < 20 then
        MagniDamage(do2target, 10, 10, 10, 10, "Normal")
      end
    end
    CreateSound("http://www.roblox.com/asset/?id=338586299", RootPart, 1, 1)
    SlashEffect(BrickColor.new("Royal purple"), Head.CFrame * cf(0, -1, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    SlashEffect(BrickColor.new("Royal purple"), Head.CFrame * cf(0, 0.5, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    SlashEffect(BrickColor.new("Royal purple"), Head.CFrame * cf(0, 2, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    RootPart.CFrame = Head.CFrame * cf(0, 0, -30)
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
      MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    attack = false
  end
end

Face = Head.face
Shirt = Character:FindFirstChild("Shirt")
Pants = Character:FindFirstChild("Pants")
Cloak = function()
  
  Face.Parent = nil
  cloaked = true
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 0.7, 0.2 do
      swait()
      v.Transparency = i
    end
    v.Transparency = 1
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    
    for i = 0, 0.7, 0.2 do
      swait()
      derp.Transparency = i
    end
    derp.Transparency = 1
  end
), hatp)
          -- NIGH-OMNI FATAL ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- NIGH-OMNI FATAL ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

UnCloak = function()
  
  CreateSound("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  Face.Parent = Head
  cloaked = false
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.1 do
      swait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    
    for i = 0, 1, 0.1 do
      swait()
      derp.Transparency = derp.Transparency - 0.1
    end
    derp.Transparency = 0
  end
), hatp)
          -- NIGH-OMNI FATAL ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- NIGH-OMNI FATAL ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

hotdog = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(20), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
    Humanoid.WalkSpeed = 53
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
--[[  local con = Hit.Touched:connect(function(hit)
    
    Damagefunc(Hit, hit, 10, 25, math.random(1, 5), "Snare", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)]]
  m.Parent = nil
  demon.Parent = Character
  Cloak()
  CreateSound("http://roblox.com/asset/?id=257001320", Torso, 1, 0.5)
  CreateSound("http://roblox.com/asset/?id=28257433", Torso, 1, 0.5)
  for i = 0, 1, 0.02 do
    swait()
    MagniDamage(RootPart, 5, 1, 3, 0, "Normal")
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 5, 5, 5, 0.07)
    Torso.Velocity = RootPart.CFrame.lookVector * 75
    FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.5)
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  UnCloak()
--  con:disconnect()
  Humanoid.WalkSpeed = 16
  demon.Parent = nil
  m.Parent = Character
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  Humanoid.WalkSpeed = 16
  attack = false
end

truehotdog = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 0.5, 0.5, 0.5, 0.07)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(20), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  m.Parent = nil
  Cloak()
  CreateSound("http://roblox.com/asset/?id=190119264", Torso, 1, 0.5)
  for i = 0, 1, 0.01 do
    swait()
    MagniDamage(RootPart, 15, 1, 3, -30, "Normal")
    SlashEffect(BrickColor.new("Royal purple"), RootPart.CFrame * cf(math.random(-10, 10), -1, math.random(-10, 10)) * angles(math.random(-5, 5), math.random(-5, 5), 0) * angles(0, 0, math.random(-5, 5)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
    CreateSound("http://roblox.com/asset/?id=62339698", Torso, 0.7, 2)
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 5, 5, 5, 0.07)
    WaveEffect(BrickColor.new("Really black"), RootPart.CFrame * angles(0, math.random(-50, 50), 0), 1, 1, 1, math.random(0.5, 1), 0.5, math.random(0.5, 1), 0.05)
    WaveEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, -1.5, 0) * angles(0, math.random(-50, 50), 0), 1, 1, 1, 1, -0.01, 1, 0.05)
    Torso.Velocity = RootPart.CFrame.lookVector * 10
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  UnCloak()
  m.Parent = Character
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

mouse.Button1Down:connect(function()
  attacktype = 7
  if attack == false and attacktype == 1 then
    attackone()
    attacktype = 2
	else
		if attack == false and attacktype == 2 then
		attacktype = 3
		attacktwo()
		else
		if attack == false and attacktype == 3 then
			attacktype = 4
			attackthree()
			else
				if attack == false and attacktype == 4 then
					attacktype = 5
					attackfour()
				else
					if attack == false and attacktype == 5 then
						attacktype = 6
						attackfive()
					else
						if attack == false and attacktype == 6 then
							attacktype = 7
							attacksix()
						else
							if attack == false and attacktype == 7 then
								attacktype = 8
								attackseven()
							else
								if attack == false and attacktype == 8 then
									attacktype = 1
									attackeight()
								end
							end
						end
					end
				end
			end
		end
	end
end)
mouse.KeyDown:connect(function(k)
  
  k = k:lower()
  if attack == false and co1 <= cooldown1 and k == "z" then
    cooldown1 = 0
    dead()
  else
    if attack == false and co2 <= cooldown2 and k == "x" then
      cooldown2 = 0
      hotdog()
    else
      if attack == false and co3 <= cooldown3 and k == "c" then
        cooldown3 = 0
        qaeoshotdog()
      else
        if attack == false and co4 <= cooldown4 and k == "v" then
          cooldown4 = 0
          truehotdog()
        end
      end
    end
  end
end
)
updateskills = function()
  
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
end

while 1 do
  swait()
  updateskills()
  target = findNearestTorso(RootPart.Position)
  do2target = target
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
        MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
        MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
        MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-150), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-140), math.rad(0), math.rad(-140 + 0.3 * math.cos((sine) / 8))), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
            MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			MotorThreeWeld.C0 = clerp(MotorThreeWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorFourWeld.C0 = clerp(MotorThreeWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorThumbThreeWeld.C0 = clerp(MotorThumbThreeWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            MotorThumbFourWeld.C0 = clerp(MotorThumbFourWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if 2 < (math.abs(Torsovelocity.x) + math.abs(Torsovelocity.z)) and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 + 0.1 * math.cos((sine) / 8), -1) * angles(math.rad(-90), math.rad(0), math.rad(80)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(40), math.rad(0 + 50 * math.cos((sine) / 4))), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1.2, -1 + 0.1 * math.cos((sine) / 8), 0) * LHCF * angles(math.rad(0), math.rad(40), math.rad(0 + 50 * math.cos((sine) / 4))), 0.3)
              MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
              MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
              MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          end
        end
      end
    end
  end
  if 0 < #Effects then
    for e = 1, #Effects do
      if Effects[e] ~= nil then
        local Thing = Effects[e]
        if Thing ~= nil then
          local Part = Thing[1]
          local Mode = Thing[2]
          local Delay = Thing[3]
          local IncX = Thing[4]
          local IncY = Thing[5]
          local IncZ = Thing[6]
          if Thing[1].Transparency <= 1 then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Shatter" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                          Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                          Thing[6] = Thing[6] + Thing[5]
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
end