--[[KORBLOX_WEAPONRY]]--
--To use RGB make Brickcolor = ""--
--Color Choosing made by OOO--

Brickcolor = "New Yeller"

r = 0
g = 0
b = 0

Ply = game.Players.LocalPlayer
Char = Ply.Character
Tor = Char.Torso
He = Char.Head
Ne = Tor.Neck
Hu = Char.Humanoid
LA = Char["Left Arm"] 
LL = Char["Left Leg"] 
RA = Char["Right Arm"] 
RL = Char["Right Leg"]
LS = Tor["Left Shoulder"] 
RS = Tor["Right Shoulder"] 
LH = Tor["Left Hip"] 
RH = Tor["Right Hip"] 
Combo = 1
Effects = { }

NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RP = Char.HumanoidRootPart
RJ = RP.RootJoint
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
LHCF = CFrame.Angles(0, math.rad(-90), 0)
RHCF = CFrame.Angles(0, math.rad(90), 0)
attack = false
equipped = false
local Anim = "Idle"
cam = workspace.CurrentCamera
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
        Parent = Char,
        Name = "WeaponModel",
}

RS.Parent = nil 
LS.Parent = nil 

RW = Create("Weld"){
        Name = "Right Shoulder",
        Part0 = Tor ,
        C0 = CFrame.new(1.5, 0.5, 0),
        C1 = CFrame.new(0, 0.5, 0), 
        Part1 = RA ,
        Parent = Tor ,
}

LW = Create("Weld"){
        Name = "Left Shoulder",
        Part0 = Tor ,
        C0 = CFrame.new(-1.5, 0.5, 0),
        C1 = CFrame.new(0, 0.5, 0) ,
        Part1 = LA ,
        Parent = Tor ,
}


        
mouse = Ply:GetMouse()
if Brickcolor == "" then
choiceofcolor = BrickColor.new(Color3.fromRGB(r,g,b))
else
choiceofcolor = BrickColor.new(Brickcolor)
end


tclr = choiceofcolor.Name
tlcr3 = choiceofcolor.Color
function swait(num)
        if num == 0 or num == nil then
                game:service'RunService'.Heartbeat:wait()
        else
                for i = 0, num do
                        game:service'RunService'.Heartbeat:wait()
                end
        end
end
        
function RemoveOutlines(part)
        part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
        
function CreatePart(FF, Par, Mat, Ref, Tra, BC, Nam, Siz)
        local Part = Create("Part"){
                formFactor = FF,
                Parent = Par,
                Reflectance = Ref,
                Transparency = Tra,
                CanCollide = false,
                Locked = true,
                BrickColor = BrickColor.new(tostring(BC)),
                Name = Nam,
                Size = Siz,
                Position = Tor.Position,
                Material = Mat,
        }
        RemoveOutlines(Part)
        return Part
end
        
function CreateMesh(Ms, Par, MType, MId, OS, Sca)
        local Msh = Create(Ms){
                Parent = Par,
                Offset = OS,
                Scale = Sca,
        }
        if Ms == "SpecialMesh" then
                Msh.MeshType = MType
                Msh.MeshId = MId
        end
        return Msh
end
        
function CreateWeld(Par, PartA, PartB, CA, CB)
        local Weld = Create("Weld"){
                Parent = Par,
                Part0 = PartA,
                Part1 = PartB,
                C0 = CA,
                C1 = CB,
        }
        return Weld
end

local function CFrameFromTopBack(at, top, back)
        local right = top:Cross(back)
        return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
        local edg1 = (c - a):Dot((b - a).unit)
        local edg2 = (a - b):Dot((c - b).unit)
        local edg3 = (b - c):Dot((a - c).unit)
        if edg1 <= (b - a).magnitude and edg1 >= 0 then
                a, b, c = a, b, c
        elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
                a, b, c = b, c, a
        elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
                a, b, c = c, a, b
        else
                assert(false, "unreachable")
        end
 
        local len1 = (c - a):Dot((b - a).unit)
        local len2 = (b - a).magnitude - len1
        local width = (a + (b - a).unit * len1 - c).magnitude
 
        local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
        local list = {}

        local Color = BrickColor.new(tclr)
 
        if len1 > 0.01 then
                local w1 = Create('WedgePart', m){
                        Material = "SmoothPlastic",
                        FormFactor = 'Custom',
                        BrickColor = Color,
                        Transparency = 0,
                        Reflectance = 0,
                        Material = "Neon",
                        CanCollide = false,
                        Anchored = true,
                        Parent = workspace,
                        Transparency = 0.3,
                }
                game:GetService("Debris"):AddItem(w1, 5)
                RemoveOutlines(w1)
                local sz = Vector3.new(0.2, width, len1)
                w1.Size = sz
                local sp = Create("SpecialMesh"){
                        Parent = w1,
                        MeshType = "Wedge",
                        Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
                }
                w1:BreakJoints()
                table.insert(Effects, {
                w1,
                "Elec",
                .05,
                0.03,
                0.03,
                0.03,
                sp
            })
                w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
                table.insert(list, w1)
        end
        if len2 > 0.01 then
                local w2 = Create('WedgePart', m){
                        Material = "SmoothPlastic",
                        FormFactor = 'Custom',
                        BrickColor = Color,
                        Transparency = 0,
                        Reflectance = 0,
                        Material = "Neon",
                        CanCollide = false,
                        Anchored = true,
                        Parent = workspace,
                        Transparency = 0.3,
                }
                game:GetService("Debris"):AddItem(w2, 5)
                RemoveOutlines(w2)
                local sz = Vector3.new(0.2, width, len2)
                w2.Size = sz
                local sp = Create("SpecialMesh"){
                        Parent = w2,
                        MeshType = "Wedge",
                        Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
                }
                w2:BreakJoints()
                table.insert(Effects, {
                w2,
                "Elec",
                .05,
                0.03,
                0.03,
                0.03,
                sp
            })
                w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
                table.insert(list, w2)
        end
        return unpack(list)
end
        
function CreateSound(id, par, vol, pit) 
        coroutine.resume(coroutine.create(function()
                local sou = Create("Sound"){
                Parent = par or workspace,
                Volume = vol,
                Pitch = pit or 1,
                SoundId = id,
                }
                wait() 
                sou:play() 
                wait(6)
                sou:remove()
        end))
end
 
function clerp(a,b,t)
return a:lerp(b,t)
end

function rayCast(Pos, Dir, Max, Ignore)
        return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function Damage(hit, damage, cooldown, Color1, Color3, HSound, HPitch)
        for i, v in pairs(hit:GetChildren()) do 
                if v:IsA("Humanoid") and hit.Name ~= Char.Name then
                        local find = v:FindFirstChild("Hitz")
                        if not find then
                                if v.Parent:findFirstChild("Head") then
                                        local BillG = Create("BillboardGui"){
                                        Parent = v.Parent.Head,
                                        Size = UDim2.new(1, 0, 1, 0),
                                        Adornee = v.Parent.Head,
                                        StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
                                        }
                                        local TL = Create("TextLabel"){
                                        Parent = BillG,
                                        Size = UDim2.new(3, 3, 3, 3),
                                        BackgroundTransparency = 1,
                                        Text = tostring(damage).."-",
                                        TextColor3 = tclr.Color,
                                        TextStrokeColor3 = tclr3,
                                        TextStrokeTransparency = 0,
                                        TextXAlignment = Enum.TextXAlignment.Center,
                                        TextYAlignment = Enum.TextYAlignment.Center,
                                        FontSize = Enum.FontSize.Size18,
                                        Font = "ArialBold",
                                        }
                                        coroutine.resume(coroutine.create(function()
                                                wait(1)
                                                for i = 0, 1, .1 do
                                                        wait(.1)
                                                        BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
                                                end
                                                BillG:Destroy()
                                        end))
                                end
                                v.Health = v.Health - damage
                                local bool = Create("BoolValue"){
                                Parent = v,
                                Name = 'Hitz',
                                }
                                if HSound ~= nil and HPitch ~= nil then
                            CreateSound(HSound, Hitbox, .7, HPitch) 
                        end
                                game:GetService("Debris"):AddItem(bool, cooldown)
                        end
                end
        end
end

function MagnitudeDamage(Part, magni, mindam, maxdam)
        for _, c in pairs(workspace:children()) do
                local hum = c:findFirstChild("Humanoid")
                if hum ~= nil then
                        local head = c:findFirstChild("Torso")
                        if head ~= nil then
                                local targ = head.Position - Part.Position
                                local mag = targ.magnitude
                                if mag <= magni and c.Name ~= Ply.Name then 
                                        Damage(head.Parent, math.random(mindam,maxdam), 0, BrickColor.new("Really black"), Color, "rbxassetid://199149186", 1)
                                end
                        end
                end
        end
end

Handle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","Handle",Vector3.new(0.320322663, 1.67788064, 0.320322633))
Handleweld=CreateWeld(m,Char["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.999474049, 0.0714797974, -0.0598907471, 2.08635171e-007, 0.999999642, 5.06639481e-007, 9.82107395e-007, 5.06639424e-007, -0.999999762, -1, 2.08635541e-007, -9.82107167e-007))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FakeHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Institutional white","FakeHandle",Vector3.new(0.320322663, 0.76267302, 0.320322633))
FakeHandleweld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -0.0640640259, 0, 0.999999523, 2.27373675e-013, -1.56513745e-013, 2.27373675e-013, 0.999999523, -3.41060513e-013, -1.56513745e-013, -3.41060513e-013, 1))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Institutional white","Hitbox",Vector3.new(1.22027707, 5.03364182, 0.311295122))
Hitboxweld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000420093536, -4.26976395, -9.15527344e-005, 0.999993086, 2.0861313e-007, 2.95250463e-010, -1.34110024e-007, 0.999999464, -6.10795155e-007, -2.95284353e-010, 6.10810616e-007, 0.999993324))
CreateMesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.539000034))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, 1.21924973, 0.152131081, -3.86040366e-010, 8.94308414e-008, -0.999993324, -4.47037678e-008, -0.999999344, -8.94422101e-008, -0.999992967, 1.63915843e-007, 3.86170623e-010))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 0.980000138))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.23667526, -0.423137665, -9.15527344e-005, 0.258321792, -0.966057897, 1.15320972e-007, 0.966051817, 0.258323461, -4.03209441e-007, 3.59733548e-007, 2.15578552e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833000019, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,tclr,"Part",Vector3.new(0.311295122, 3.96589971, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 3.73589706, 0.533314228, 3.5017747e-006, -1.93722258e-007, -0.999993324, -4.47038246e-008, -0.999999344, 1.93708388e-007, -0.999992967, 1.6391931e-007, -3.50177561e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.144060016, 1, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.457603842))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -1.67745972, 0.532254219, -4.17616519e-007, -2.07146968e-006, 0.999993324, -9.98377686e-007, 0.999999285, 2.07146832e-006, -0.999992907, -1.14738555e-006, -4.17618963e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, 1.44800949, 0.609675884, 3.87875232e-010, 1.04333651e-007, -0.999993324, -4.47037678e-008, -0.999999344, -1.04344906e-007, -0.999992967, 1.63915843e-007, -3.87581994e-010))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.979999959, 0.979999959))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.457419395, 0.000122070313, -1.37178421, 0.999992847, 8.94037839e-008, 2.01299697e-013, 5.09102417e-013, 8.94365257e-008, -0.999993324, -1.3411011e-007, 0.999999285, 8.94478944e-008))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.980000138, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Institutional white","Part",Vector3.new(0.311295122, 0.76267302, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -6.10015106, 0.152092457, 3.50177106e-006, 3.57717454e-007, 0.999993324, -2.98022712e-007, 0.999999225, -3.57702561e-007, -0.999993086, -2.98023508e-007, 3.50177265e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.539000034, 1, 0.980000138))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,tclr,"Part",Vector3.new(0.311295122, 0.610138357, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000198364258, -6.02388, 0.0757293701, 3.48687126e-006, 4.02472551e-007, 0.999993324, -2.98022712e-007, 0.999999225, -4.02457204e-007, -0.999993086, -2.98023508e-007, 3.4868724e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588000059, 1, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.915207684, 0.457603842))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -6.1764183, 0.228407383, 3.50177061e-006, 2.53364874e-007, 0.999993324, -2.98022741e-007, 0.999999225, -2.53350777e-007, -0.999993086, -2.98023508e-007, 3.50177265e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.48999998, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610138535, 0.311295122, 0.457603782))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.457419395, 0.000122070313, -1.37178421, 0.999992847, 8.94037839e-008, 2.01299697e-013, 4.69571972e-013, 2.23559823e-007, -0.999993324, -1.34110138e-007, 0.999999285, 2.23570339e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.979999959, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.456438541, -1.37244415, 3.05175781e-005, -0.999999464, -1.042674e-007, -4.16111179e-005, -1.04307645e-007, 0.999999464, -9.59837166e-007, 4.16110997e-005, -9.59829663e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.459129214, 0.436248958, 2.17361784))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,tclr,"Part",Vector3.new(0.311295122, 1.06774235, 0.610138357))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -6.25266266, 0.304620266, 3.50177197e-006, 2.53351118e-007, 0.999993324, -2.98022741e-007, 0.999999225, -2.53336339e-007, -0.999993086, -2.98023508e-007, 3.50177334e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.144060016, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.424539566, -1.38871384, -9.15527344e-005, 0.96578759, 0.259309262, -2.27494468e-008, -0.259307534, 0.965793788, -4.58008401e-007, -9.67946789e-008, 4.48255491e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.166600004, 0.979999959, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.24385071e-005, -1.14368057, -9.15527344e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.34110081e-007, 0.999999285, -8.92358685e-008, -3.87674892e-010, 8.92481467e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.979999959, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.609939575, -4.57763672e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -1.48636445e-008, -3.87722465e-010, 1.48756953e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 0.999999523, 2.27373675e-013, -1.56513745e-013, 2.27373675e-013, 0.999999523, -3.41060513e-013, -1.56513745e-013, -3.41060513e-013, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, 1.21924973, 0.152831078, -9.86952599e-013, 2.08606821e-007, 0.999993324, 2.98022769e-007, -0.999999225, 2.08594088e-007, 0.999993086, 2.98020097e-007, 6.90400319e-013))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 0.980000138))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.277613044, 0.219649822, 0.0854192749))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.41072845, -0.00551557541, -9.15527344e-005, 7.7485987e-007, -0.999999344, 1.19366177e-007, 0.999993086, 9.08967877e-007, -3.72535112e-007, 3.72534714e-007, 1.19379479e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.171499997, 0.342999965, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Institutional white","Part",Vector3.new(0.610138357, 3.96589971, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000420093536, -3.73590088, -9.15527344e-005, 0.999993086, 2.0861313e-007, 2.95250463e-010, -1.34110024e-007, 0.999999464, -6.10795155e-007, -2.95284353e-010, 6.10810616e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.539000034))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.23654175, -0.423635483, -9.15527344e-005, 0.258325994, 0.966056764, -1.42299825e-007, -0.966050863, 0.258327663, -4.10633703e-007, -3.59935655e-007, 2.43561431e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.0833000019, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.311295122, 0.320322663))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.425010681, -1.38858414, -9.15527344e-005, 0.965785801, -0.259315699, 2.35243647e-008, 0.25931409, 0.965792, -4.58000841e-007, 9.60470743e-008, 4.48448759e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.166600004, 0.979999959, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0.5,0,tclr,"Part",Vector3.new(0.311295122, 0.610138357, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000183105469, -6.02386475, 0.0767188072, -3.41193322e-006, 4.62101866e-007, -0.999993324, 4.4703711e-008, 0.999999344, 4.62110393e-007, 0.999992967, -1.63912489e-007, -3.41193504e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.588000059, 1, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.12812914, 0.219649822, 0.175414681))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Institutional white","Part",Vector3.new(0.311295122, 0.76267302, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000137329102, -6.10015106, 0.152894497, -3.41193277e-006, 3.57729903e-007, -0.999993324, 4.4703711e-008, 0.999999344, 3.57739054e-007, 0.999992967, -1.63912489e-007, -3.41193413e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.539000034, 1, 0.980000138))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.915207684, 4.11843443, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000294208527, -3.65963364, -0.000122070313, 0.999993086, 2.0861313e-007, 2.95605734e-010, -1.34110167e-007, 0.999999464, -1.49060497e-008, -2.9573563e-010, 1.49183279e-008, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.28746033e-005, -0.914936066, -4.57763672e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -1.48636445e-008, -3.87722465e-010, 1.48756953e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 3.81336522, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00030374527, -3.81218719, -9.15527344e-005, 0.999993086, 2.0861313e-007, 2.95932584e-010, -1.3411011e-007, 0.999999464, -2.3839732e-007, -2.96005193e-010, 2.38410735e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.980000138, 1, 0.58799994))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.457603961, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, 0.000225067139, -9.15527344e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.34110081e-007, 0.999999285, -4.46653985e-008, -3.87680721e-010, 4.4677563e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.23977661e-005, -0.304897308, -4.57763672e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -1.48636445e-008, -3.87722465e-010, 1.48756953e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.600088, 0.155585289, 0.0854192749))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.600088, 0.0991474912, 0.151009142))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 0.610328674, -9.15527344e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -2.97645784e-008, -3.87786858e-010, 2.97766292e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.600088, 0.155585289, 0.0854192749))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,tclr,"Part",Vector3.new(0.311295122, 1.06774235, 0.610138357))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -6.25266266, 0.305475712, -3.53157384e-006, 2.53391647e-007, -0.999993324, 4.47037678e-008, 0.999999344, 2.53401481e-007, 0.999992967, -1.63912375e-007, -3.53157475e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.144060016, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610138357, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000116825104, -1.67740631, -4.57763672e-005, 0.999993086, 2.0861313e-007, 2.95605734e-010, -1.34110195e-007, 0.999999464, 2.08220342e-007, -2.95693636e-010, -2.08209428e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.49000001, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.277613044, 0.219649822, 0.0854192749))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182151794, -0.0913543701, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(1.600088, 0.0991474912, 0.151009142))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.610138357, 0.311295122, 0.457603782))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.457349777, 0.000122070313, -1.37178421, 0.999992847, 8.94037839e-008, -1.96604235e-013, 1.57148329e-014, 1.93753465e-007, -0.999993324, -1.34110138e-007, 0.999999285, 1.93764151e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.979999959, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.456629276, -1.37243652, 6.10351563e-005, -0.999999464, -1.042674e-007, -4.16111179e-005, -1.04307645e-007, 0.999999464, -9.59837166e-007, 4.16110997e-005, -9.59829663e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.459129214, 0.436248958, 2.17361784))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,tclr,"Part",Vector3.new(0.311295122, 3.96589971, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, 3.73587799, 0.534302235, -3.53157475e-006, -2.53369365e-007, 0.999993324, 2.98022826e-007, -0.999999225, -2.5337863e-007, 0.999993086, 2.9801663e-007, 3.53157589e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.144060016, 1, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.915207684, 0.457603842))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -6.1764183, 0.229121208, -3.41193254e-006, 2.53392898e-007, -0.999993324, 4.47037678e-008, 0.999999344, 2.53402845e-007, 0.999992967, -1.63912489e-007, -3.4119339e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.48999998, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000304698944, -1.82930374, -9.15527344e-005, 0.999993086, 2.0861313e-007, 2.95264674e-010, -1.34110081e-007, 0.999999464, -3.57568979e-007, -2.95355018e-010, 3.57583076e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.980000138, 0.48999998, 0.58799994))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.23977661e-005, 0.305324554, -9.15527344e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -2.97645784e-008, -3.87786858e-010, 2.97766292e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, 1.44799423, 0.610420704, 3.41184159e-006, -7.45392299e-008, 0.999993324, 2.98022826e-007, -0.999999225, -7.4551906e-008, 0.999993086, 2.98023451e-007, -3.41184318e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.979999959, 0.979999959))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.37281144, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.81209564, 0.00182342529, 0.091506958, 0.000406563195, 0.999999523, -2.06946106e-006, 0.999999642, -0.000406607898, -1.196214e-005, -1.1962974e-005, -2.06459526e-006, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.12812914, 0.219649822, 0.175414681))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.915207684, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000138759613, -1.44802856, -0.000122070313, 0.999992847, 8.94037839e-008, 3.8724815e-010, -1.34110053e-007, 0.999999285, -1.93666892e-007, -3.87585686e-010, 1.9368008e-007, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.979999959, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.457603842))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -1.67734528, 0.532927036, -2.99408885e-006, 2.20594939e-006, -0.999993324, -6.10947552e-007, 0.999999166, 2.20594984e-006, 0.999993145, 6.85453131e-007, -2.99408862e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.320322663, 0.311295122, 0.320322633))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 0.915397644, -9.15527344e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -2.97645784e-008, -3.87786858e-010, 2.97766292e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.48999998, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.45767498, 0.000122070313, -1.37178421, 0.999992847, 8.94037839e-008, 2.01299697e-013, 4.17176927e-013, 7.45334887e-008, -0.999993324, -1.3411011e-007, 0.999999285, 7.45446869e-008))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.980000138, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.14848328e-005, 1.06746292, -4.57763672e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.3411011e-007, 0.999999285, -1.48636445e-008, -3.87722465e-010, 1.48756953e-008, 0.999993324))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, 1.21999741, 0.228783607, 3.44213481e-006, 2.68377903e-007, 0.999993324, -2.98022741e-007, 0.999999225, -2.68363578e-007, -0.999993086, -2.98023451e-007, 3.44213686e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.14848328e-005, 1.37253189, -4.57763672e-005, 0.999992847, 8.94037839e-008, 3.87475524e-010, -1.34110081e-007, 0.999999285, -7.44655608e-008, -3.8769582e-010, 7.44779527e-008, 0.999993324))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 1.21999741, 0.228775501, -3.41191981e-006, 3.57804822e-007, -0.999993324, 4.4703711e-008, 0.999999344, 3.5781386e-007, 0.999992967, -1.63912489e-007, -3.41192117e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.48999998, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Part",Vector3.new(0.610138357, 0.457603842, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000115871429, 1.37241745, 4.57763672e-005, -0.999999464, -1.042674e-007, -4.16111179e-005, -1.04307645e-007, 0.999999464, -9.59837166e-007, 4.16110997e-005, -9.59829663e-007, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.373709828, 0.364557743, 2.17361784))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.44883347, 0.228752613, -1.04306352e-007, 2.98211376e-008, -0.999993324, 1.3411011e-007, -0.999999285, -2.98328473e-008, -0.999992847, -8.94038408e-008, 1.04306622e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.979999959, 0.48999998))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.311295122, 0.320322663, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00018453598, 7.62939453e-005, 1.37253189, 0.999992847, 8.94037839e-008, 2.58143116e-013, 4.50900385e-013, 3.726106e-007, -0.999993324, -1.34110195e-007, 0.999999285, 3.7262015e-007))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.980000138, 1, 0.9799999))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.311295122, 0.311295122, 0.311295122))
Partweld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.44882584, 0.228737831, -6.13660078e-012, -8.94369236e-008, 0.999993324, 1.3411011e-007, -0.999999285, -8.94483492e-008, 0.999992847, 8.94037839e-008, 5.94248522e-012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.979999959, 0.979999959, 0.48999998))
ShotgunHandle=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","ShotgunHandle",Vector3.new(0.274405897, 0.205804482, 0.411608905))
ShotgunHandleweld=CreateWeld(m,Char["Left Arm"],ShotgunHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.935044765, -0.0157318115, 0.265125275, -2.65166643e-012, -0.999999523, -2.23517418e-007, 1, -2.65166556e-012, -6.50521303e-019, 5.41119453e-023, -2.23517389e-007, 0.999999642))
Barrel=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Barrel",Vector3.new(0.411608934, 0.200000003, 0.343007416))
Barrelweld=CreateWeld(m,ShotgunHandle,Barrel,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.54535675, -2.64179325, -0.000228881836, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Barrel,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.360157818, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.205804482, 0.200000003, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.373851776, -2.6417737, -0.000228881836, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.360157818, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.36594534, -0.857486725, -0.000274658203, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.205804482, 0.200000003, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.648262024, -2.64179325, -0.000228881836, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.360157818, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.343007416, 2.05804467, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.377281189, -1.64534235, -0.000228881836, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.480210334, 0.686014831, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.651687622, -0.273382664, -0.000198364258, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.754508972, -2.16281223, -0.105438232, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68601501, 1, 0.686014891))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.411603868, 0.200000003, 0.411603898))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.272898197, 0.205749512, 0.480178833, 0.999999642, 2.98028588e-008, -7.06910869e-005, -2.98028482e-008, 1, 2.10409446e-012, 7.06910869e-005, 1.07548546e-015, 0.999999642))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.343003303, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.754508972, -1.06519508, 0.100372314, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68601501, 1, 0.686014891))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.411608875, 0.200000003, 0.274405926))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.272881031, 0.207458496, 0.480178833, 0.999999642, 2.98028588e-008, -7.06910869e-005, -2.98028482e-008, 1, 2.10409446e-012, 7.06910869e-005, 1.07562829e-015, 0.999999642))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.360157818, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.754508972, -1.06519508, -0.105438232, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68601501, 1, 0.686014891))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.411608964, 0.205804601, 0.346437484))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.342899323, -1.06519222, -0.000823974609, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 0.205804601, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.754508972, -2.16281223, 0.100372314, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.68601501, 1, 0.686014891))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Light stone grey","Part",Vector3.new(0.200000003, 0.346437484, 0.205804482))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.478748322, -0.00122070313, 0.102870941, 0.999999642, -1.08415606e-018, -7.06910869e-005, -8.67319759e-019, 1, -1.87299419e-016, 7.06910869e-005, 1.87391349e-016, 0.999999642))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.686014831, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.411608875, 0.205804482, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0, 0.171504974, 0.999999285, -1.51788294e-018, 0, -1.51788294e-018, 1, -5.77734993e-020, 0, -5.77734993e-020, 0.999999285))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.65212965, -0.85749054, -0.0690460205, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.343007416, 2.05804467, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.648254395, -1.64535713, -0.000228881836, -7.04824706e-005, -1.86838183e-016, -0.999999464, 0.999999464, 2.65166535e-012, -7.04824706e-005, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.686014771, 0.480210334, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.27342844, -0.445884705, -0.000259399414, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41119453e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.651693344, -0.85749054, 0.0681915283, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.343007356, 0.343007445, 0.343007445))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.891819119, 0.411608845, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.113838196, -0.423885345, 0.000503540039, -0.865529597, -2.29509619e-012, 0.50085628, -0.50085628, -1.32810386e-012, -0.865529597, 2.65166643e-012, -1, -5.41119453e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.783638, 0.200000003, 0.205804422))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.50810814, -0.754581451, -0.000137329102, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41138134e-023))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.68601495, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,tclr,"Part",Vector3.new(0.411608875, 0.200000003, 0.274405926))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.273527622, -0.209014893, 0.480205536, 0.999999344, 2.98028588e-008, -0.000141352371, -2.98028411e-008, 1, 4.21351756e-012, 0.000141352371, 1.26303582e-015, 0.999999344))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.37730819, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.274405956, 0.891819477, 0.346437484))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548706055, -1.61399889, -0.000823974609, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.411608934, 0.205804601, 0.346437484))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548706055, -2.16281366, -0.000823974609, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Light stone grey","Part",Vector3.new(0.411602557, 0.200000003, 0.411602587))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.273536205, -0.205581665, 0.480205536, 0.999999344, 2.98028588e-008, -0.000141352371, -2.98028411e-008, 1, 4.21351756e-012, 0.000141352371, 1.26288293e-015, 0.999999344))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.3430022, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.411608934, 0.205804601, 0.346437484))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.548706055, -1.06519127, -0.000823974609, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.205804482))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.229156494, -0.201507568, 0.480171204, -0.258818954, 0.965925455, -6.5301144e-008, -0.96592468, -0.258819073, -7.28488203e-009, -4.47033983e-008, 9.78950112e-008, 0.999998987))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.295913696, 0.0476303101, 0.119953156, -0.183012679, 0.965925515, 0.18301259, -0.683011949, -0.258819044, 0.683012009, 0.707105875, 1.14738882e-007, 0.707106292))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.30342817, 0.205804482, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.26771879, -0.171478271, -0.000198364258, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41119453e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.109359741, -0.655639648, 0.510620117, 0.183012411, 0.965925574, 0.183012441, -0.68301183, 0.258818775, -0.683012307, -0.707106233, 5.37700018e-008, 0.707106113))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753450096, 0.148796618))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.297683716, 0.0471572876, 0.119953156, 0.183012515, 0.965925515, -0.183012411, -0.683012307, 0.258818865, 0.68301183, 0.707105637, 7.80294496e-009, 0.707106352))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.411608964, 0.205804601, 0.346437484))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.342903137, -2.16281414, -0.000823974609, 4.02331182e-007, 1.12467571e-018, -0.999999106, 0.99999702, 2.65165884e-012, 2.08615674e-007, 2.65166079e-012, -0.999997854, -5.41118318e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.343007386, 0.343007356, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0353784561, -0.651687622, 0.00016784668, -0.999999344, -2.65166491e-012, 7.00652381e-005, -7.00652381e-005, -1.85731826e-016, -0.999999344, 2.65166643e-012, -1, -5.4111939e-023))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.274405956, 0.205804482, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.478794575, -0.102890015, -0.000198364258, -0.999999642, -2.65166578e-012, 7.06910869e-005, -7.06910869e-005, -1.87391362e-016, -0.999999642, 2.65166643e-012, -1, -5.41119453e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.82321763, 0.343007356, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0818824768, -0.459415436, -7.62939453e-005, -0.865718424, -2.29559687e-012, 0.500530124, -0.500530124, -1.32723899e-012, -0.865718424, 2.65166643e-012, -1, -5.41119453e-023))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.200000003))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10760498, -0.655174255, 0.510620117, -0.18301256, 0.965925455, -0.183012798, -0.683011591, -0.258819133, -0.683012605, -0.707106292, -2.35276794e-008, 0.707105815))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,tclr,"Part",Vector3.new(0.200000003, 1.02902222, 0.205804482))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.230926514, -0.201982498, 0.480171204, 0.258818656, 0.965925574, 8.02022342e-008, -0.965924799, 0.258818835, -5.28825353e-007, -4.47034608e-007, 4.54816842e-008, 0.999999046))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.0517941117, 0.753587306, 0.148865223))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.09762359, 0.343007356, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.10375023, -0.155986786, 0.00102233887, -0.999999166, -2.65155259e-012, 0.000461965625, -0.000468551938, 5.56010587e-014, -0.999994993, 2.65157514e-012, -0.999996066, -4.26325438e-014))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.617413342, 1.09762371, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.293060303, 1.10386992, 0.00102233887, -0.00047101063, 1.29604875e-014, -0.999999285, 0.999999285, 2.65161482e-012, -0.00047101063, 2.65160962e-012, -1, -1.42093589e-014))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.480210334, 0.823217809, 0.343007416))
Partweld=CreateWeld(m,ShotgunHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.594764709, 0.147701263, 0.00117492676, -0.499999762, -1.32583267e-012, -0.866024554, 0.866024554, 2.29640851e-012, -0.499999762, 2.65166643e-012, -1, -6.73411617e-023))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.343007326, 0.205804482, 0.343007416))
Wedgeweld=CreateWeld(m,ShotgunHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00016784668, 0.171470642, 2.0906744, -1.553847e-012, -1, -5.96497784e-008, 7.06910869e-005, -5.96498282e-008, 0.999999642, -0.999999642, -2.65166578e-012, 7.06910869e-005))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Wedge=CreatePart(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Wedge",Vector3.new(0.343007326, 0.274405897, 1.09762394))
Wedgeweld=CreateWeld(m,ShotgunHandle,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00102233887, -0.153308868, -1.10388994, 2.34347741e-012, -0.999999285, -5.96529546e-008, 5.28991086e-006, -5.96529972e-008, 0.99999851, -0.999999583, -2.65160051e-012, 4.23192796e-006))
CreateMesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))

local PE1 = Create("ParticleEmitter"){
Parent = Hitbox,
Color = ColorSequence.new(tlcr3, Color3.new (0, 0, 0)),
Transparency = NumberSequence.new(.5),
Size = NumberSequence.new(0.3),
Texture = "rbxassetid://263433152",
Lifetime = NumberRange.new(1.8),
Rate = 25,
VelocitySpread = 180,
Rotation = NumberRange.new(100),
Speed = NumberRange.new(2),
LightEmission = 0.5,
LockedToPart = true
}

local PE1 = Create("ParticleEmitter"){
Parent = Barrel,
Color = ColorSequence.new(BrickColor.new(tclr).Color),
Transparency = NumberSequence.new(0),
Size = NumberSequence.new(.5),
Texture = "rbxassetid://257430870",
Lifetime = NumberRange.new(.1),
Rate = 100,
VelocitySpread = 180,
Rotation = NumberRange.new(0),
Speed = NumberRange.new(0),
LightEmission = .6,
LockedToPart = true,
Enabled = false
}

local PE2 = PE1:Clone()
PE2.Size = NumberSequence.new(.7)
PE2.LightEmission = 1
PE2.Texture = "rbxassetid://87729590"

local Lite = Create("PointLight"){
        Parent = Barrel,
        Color = BrickColor.new(tclr).Color,
        Shadows = true,
        Range = 10,
        Brightness = 0.5,
        Enabled = false
}

function FirstAttack()
attack = true
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(30)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(math.rad(170), math.rad(0), math.rad(20)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -.5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-30)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,1)
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(30,50), 0.1, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-40)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.3, -.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-20)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-40)), .5)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-40), math.rad(0)), .5)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-40), math.rad(0)), .5)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(35)), .4)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
attack = false
HitDeb:disconnect()
end

function SecondAttack()
attack = true
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(80)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-80)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(40)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-30)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-80), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-80), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,1.1)
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(30,50), 0.1, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(50)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(130)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(-70)), .4)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
attack = false
HitDeb:disconnect()
end

function ThirdAttack()
attack = true
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * CFrame.Angles(math.rad(120), math.rad(-50), math.rad(0)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,1)
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(30,50), 0.1, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
attack = false
HitDeb:disconnect()
end

function FourthAttack()
attack = true
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(100)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,.9)
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(30,50), 0.1, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(80)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(50)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-80)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
attack = false
HitDeb:disconnect()
end

function ContAttack()
attack = true
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(10,30), 0.1, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
for i = 1,4 do
   for i = 0,1,0.3 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * CFrame.Angles(math.rad(120), math.rad(-50), math.rad(0)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,1)
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   for i = 0,1,0.3 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-60)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(130), math.rad(100)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-50)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-60), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   CreateSound("rbxassetid://154965962",Hitbox,.5,.9)
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(3), math.rad(0), math.rad(80)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(70)), .5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-80)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .5) * LHCF * CFrame.Angles(math.rad(-3), math.rad(80), math.rad(0)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(40)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
end
attack = false
HitDeb:disconnect()
end

function Spin()
attack = true
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(70)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(5), math.rad(-70)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(120), math.rad(100)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(-10)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(10)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
   local HitDeb = Hitbox.Touched:connect(function(hit)
    Damage(hit.Parent, math.random(20,30), 0, BrickColor.new("Really black"), BrickColor.new(tclr), "rbxassetid://154965973", 1)
   end)
for i = 1,2 do
  CreateSound("rbxassetid://154965962",Hitbox,.5,.95)
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), math.rad(0), -6*i), .43)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(90)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, .4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(-10)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -.4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(-50), math.rad(10)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
end
   for i = 0,1,0.1 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), .3)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(70)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -.5) * CFrame.Angles(math.rad(0), math.rad(-120), math.rad(-100)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(5)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(-5)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
for i = 1,2 do
  CreateSound("rbxassetid://154965962",Hitbox,.5,1)
   for i = 0,1,0.2 do
    wait()
        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(6), math.rad(0), 6*i), .43)
        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-50)), .3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-150), math.rad(-90)), .3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(-70)), .3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(-10)), .3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(10)), .3)
        FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(50)), .3)
        ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
   end
end
attack = false
HitDeb:disconnect()
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CreatePart(3, Char, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 2)
        Effects[#Effects + 1] = {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3
        } --part, type, delay
end

function Shoot(asd, spread1, spread2)
        local MainPos = asd.Position
        local MainPos2 = mouse.Hit.p
        local spread = Vector3.new((math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2, (math.random(-spread1, 0) + math.random()) * spread2) * (asd.Position - mouse.Hit.p).magnitude / 100
        local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2 + spread)
        num = 30
        coroutine.resume(coroutine.create(function(Spreaded) 
                repeat
                        wait()
                        local hit, pos = rayCast(MainPos, MouseLook.lookVector, 10, RP.Parent)
                        local TheHit = mouse.Hit.p
                        local mag = (MainPos - pos).magnitude 
                        CylinderEffect(BrickColor.new(tclr), CFrame.new((MainPos + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 3, mag * 5, 3, .5, 0, 1.5, 0.1)
                        MainPos = MainPos + (MouseLook.lookVector * 10)
                        num = num - 1
                        if hit ~= nil then
                                num = 0
                                local ref = CreatePart(3, workspace, "Neon", 0, 1, BrickColor.new(tclr), "Reference", Vector3.new())
                                ref.Anchored = true
                                ref.CFrame = CFrame.new(pos)
                 MagnitudeDamage(ref, 5, 5, 10)
                                game:GetService("Debris"):AddItem(ref, 1) 
                        end
                until num <= 0
        end))
end

gyro = Instance.new("BodyGyro")
gyro.Parent = nil
gyro.P = 1e7
gyro.D = 1e3
gyro.MaxTorque = Vector3.new(0,1e7,0)

local shoot = false
local gun = false
function Aim()
        attack = true
        gun = true
        gyro.Parent = RP
        for i = 0, 1, 0.2 do
                swait()
                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .5)
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), .5)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.5)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.5)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
        end
        local offset = nil
        while gun == true do
                wait()
                local gunpos = Vector3.new(mouse.Hit.p.x, He.Position.Y, mouse.Hit.p.z)
                offset = (Tor.Position.y - mouse.Hit.p.y) / 60
                local mag = (Tor.Position - mouse.Hit.p).magnitude / 80
                offset = offset / mag 
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.fromEulerAnglesXYZ(0, 0, 1.57), .3)
                LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset, 0, 0), .5)
        end
        if shoot == true then
                PE1.Enabled,PE2.Enabled = true,true
                Lite.Enabled = true
                for i = 1,2 do
                for i = 1,5 do
                Shoot(Barrel, 1, 3)
                end
                CreateSound("rbxassetid://212032538", Barrel, .5, .8)
                CreateSound("rbxassetid://168413145", Barrel, .7, 1)
                Shoot(Barrel, 0, 0)
                for i = 0, 1, 0.2 do
                        swait()
                        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
                        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(85)), .3)
                        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(20)), 0.3)
                        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-50), math.rad(-90)), 0.5)
                        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                end
                for i = 0, 1, 0.1 do
                        swait()
                        RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
                        Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(0), math.rad(0), math.rad(85)), .3)
                        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
                        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)), 0.5)
                        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                end
                end
                Lite.Enabled = false
                PE1.Enabled,PE2.Enabled = false,false
        end
        gyro.Parent = nil
        shoot = false
        attack = false
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CreatePart("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 5)
        table.insert(Effects, {
                prt,
                "Cylinder",
                delay,
                x3,
                y3,
                z3,
                msh
        })
end

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
        local prt = CreatePart("Custom", workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, 5)
    table.insert(Effects, {
           prt,
           "Block1",
           delay,
           x3,
           y3,
           z3,
           msh
   })
end


function GroundWave()
        attack = true
--[[        for i = 1,2 do
                CreateSound("rbxassetid://154965962",Hitbox,.5,.95)
        for i = 0,1,0.2 do
        wait()
                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60)), .3)
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(60)), .3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(30)), .3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-80)), .3)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.4) * RHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), .3)
                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .4) * LHCF * CFrame.Angles(math.rad(-3), math.rad(50), math.rad(0)), .3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50), math.rad(50), 6*i), .6)
                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
        end
        end]]--
                for i = 0,1,0.1 do
        wait()
                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(70)), .3)
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-70)), .3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(70)), .3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-50)), .3)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(50)), .3)
                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
                end
                Hu.WalkSpeed = 0
        coroutine.resume(coroutine.create(function()
                local CF = RP.CFrame
                local numb = -5
                local BaseCF = CF
                for i = 1, 10 do
                        BaseCF = CF * CFrame.new(0, -2, numb)
                        local baseprt = CreatePart(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Part1", Vector3.new(1, 1, 1))
                        baseprt.Anchored = true
                        baseprt.CFrame = BaseCF
                        game:GetService("Debris"):AddItem(baseprt, .5)
                        local c = game.Workspace:GetChildren()
                        for i = 1, #c do
                                local hum = c[i]:findFirstChild("Humanoid")
                                if hum ~= nil and hum.Health ~= 0 then
                                        local head = c[i]:findFirstChild("Head")
                                        if head ~= nil then
                                                local targ = head.Position - baseprt.Position
                                                local mag = targ.magnitude
                                                if mag <= 7 and c[i].Name ~= Ply.Name then 
                                                MagnitudeDamage(head, 20, 20, 30)
                                                end
                                        end
                                end
                        end
CreateSound("http://www.roblox.com/asset/?id=278596476",baseprt,.7,0.7) 
CreateSound("http://www.roblox.com/asset/?id=199145264",baseprt,.6,1.3) 
CreateSound("http://www.roblox.com/asset/?id=168413145",baseprt,.7,1.2) 
                        BlockEffect(BrickColor.new("Really black"), BaseCF, 0.5, 0.5, 0.5, 2, 2, 2, 0.05)
                        WaveEffect(BrickColor.new(tclr), BaseCF, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.05)
                        numb = numb - 3
                        wait(0.15)
                end
        end))
        for i = 0,1,0.02 do
        wait()
                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, -.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), .3)
                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(-10), math.rad(-90)), .3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(10), math.rad(90)), .5)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(5), math.rad(-30), math.rad(-60)), .3)
                RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.3) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(50)), .3)
                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(190)), .5)
                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
        end
        attack = false
        Hu.WalkSpeed = 16
end

mouse.Button1Down:connect(function()
if attack == false and Combo == 1 then 
Combo = 2
FirstAttack()
elseif attack == false and Combo == 2 then 
Combo = 3
SecondAttack()
elseif attack == false and Combo == 3 then 
Combo = 4
ThirdAttack()
elseif attack == false and Combo == 4 then 
Combo = 1
FourthAttack()
end
        if gun == true then
                shoot = true
                gun = false
        end
end)

mouse.KeyDown:connect(function(k)
        k = k:lower()
        if k == "q" and attack == false then
        ContAttack()
        elseif k == "e" and attack == false then
        Spin()
        elseif attack == false and k == 'f' then
        Aim()
        elseif attack == false and k == 'r' then
        GroundWave()
        end
end)

local sine = 0
local change = 1
local val = 0
local donum = 0

while true do
        swait()
        gyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p -RP.CFrame.p).unit * 100)
        sine = sine + change
        local torvel = (RP.Velocity * Vector3.new(1, 0, 1)).magnitude 
        local velderp = RP.Velocity.y
        hitfloor, posfloor = rayCast(RP.Position, (CFrame.new(RP.Position, RP.Position - Vector3.new(0, 1, 0))).lookVector, 4, Char)
        if equipped == true or equipped == false then
                if RP.Velocity.y > 1 and hitfloor == nil then 
                        Anim = "Jump"
                        if attack == false then
                                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
                                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
                                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(20)), .3)
                                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)), .3)
                                RH.C0 = clerp(RH.C0, CFrame.new(1, -.5, -.5) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(0)), .3)
                                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(30)), .3)
                                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
                                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
                                LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .5)
                        end
                elseif RP.Velocity.y < -1 and hitfloor == nil then 
                        Anim = "Fall"
                        if attack == false then
                                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
                                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
                                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(150), math.rad(0), math.rad(10)), .3)
                                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(-30)), .3)
                                RH.C0 = clerp(RH.C0, CFrame.new(1, -.7, -.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(10)), .3)
                                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(10)), .3)
                                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
                                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
                                LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .5)
                        end
                elseif torvel < 1 and hitfloor ~= nil then
                        Anim = "Idle"
                        if attack == false then
                                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-30)), .3)
                                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(5), math.rad(0), math.rad(30)), .3)
                                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(20)), .3)
                                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.4, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(-10)), .3)
                                RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -.2) * RHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), .3)
                                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, .2) * LHCF * CFrame.Angles(math.rad(-3), math.rad(30), math.rad(0)), .3)
                                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(.7, .6, 0) * CFrame.Angles(math.rad(0), math.rad(-5), math.rad(-80)), .3)
                                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), .3)
                                LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .5)
                        end
                elseif torvel > 2 and hitfloor ~= nil then
                        Anim = "Walk"
                        if attack == false then
                                RJ.C0 = clerp(RJ.C0, RootCF * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .3)
                                Ne.C0 = clerp(Ne.C0, NeckCF * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
                                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(20)), .3)
                                LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.4, 0) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-10)), .3)
                                RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), .3)
                                LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), .3)
                                FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), .3)
                                ShotgunHandleweld.C0 = clerp(ShotgunHandleweld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
                                LW.C1 = clerp(LW.C1, CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0), .5)
                        end
                end
        end
                if #Effects > 0 then
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
                                                elseif Thing[2] == "Cylinder" then
                                                        Mesh = Thing[1].Mesh
                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                elseif Thing[2] == "Blood" then
                                                        Mesh = Thing[7]
                                                        Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                elseif Thing[2] == "Elec" then
                                                        Mesh = Thing[1].Mesh
                                                        Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                elseif Thing[2] == "Disappear" then
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
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
