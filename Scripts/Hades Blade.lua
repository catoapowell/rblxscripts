game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"With this blade forged with the blood of the great one's, you will be cut down!", "Green")
wait(2.6)
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Annihilation Blade!", "Red")
Player=game:GetService("Players").LocalPlayer
Character=Player.Character
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack
Torso=Character.Torso
Head=Character.Head
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
LS=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RS=Torso["Right Shoulder"]
RH=Torso["Right Hip"]
Neck=Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false
attackdebounce=false
MMouse=nil
combo=0
local Anim="Idle"
local Effects={}
equipped=false
local idle=0
local hold=false
local con1=nil
local con2=nil
local Mode="Binary"
local idleanim=0
local idleanim2=false
local impulse=1
local hitfloor,posfloor=nil,nil
local damcount=0
local guard=false
--player
player=nil
--save shoulders
RSH, LSH=nil, nil
--welds
RW, LW=Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
Asset="http://www.roblox.com/asset/?id="
Health=879000
Humanoid.MaxHealth=879000
Humanoid.Health=879000
coroutine.resume(coroutine.create(function()
for i=1,20 do
Humanoid.MaxHealth=879000
Humanoid.Health=879000
end
Humanoid.MaxHealth=879000
Humanoid.Health=879000
Humanoid:TakeDamage(0)
Humanoid.Health=Health
end))
Humanoid.Health=Health
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Hades Judgement Blade",true) ~= nil then
Character:findFirstChild("Hades Judgement Blade",true).Parent = nil
end
if Character:findFirstChild("Demon Blade",true) ~= nil then
Character:findFirstChild("Demon Blade",true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil
end
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position
NoOutline(fp)
fp.Material="Granite"
fp:BreakJoints()
return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh)
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
mesh.MeshId=meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld")
weld.Parent=parent
weld.Part0=part0
weld.Part1=part1
weld.C0=c0
return weld
end
 
local fengui=it("GuiMain")
fengui.Parent=Player.PlayerGui
fengui.Name="WeaponGUI"
 
local Color1=BrickColor.new("Really red")
local Color2=BrickColor.new("Black")
local Colorr3=BrickColor.new("Black")
local Color4=BrickColor.new("Really red")
 
local model1=Instance.new("Model")
model1.Parent=Character
model1.Name="Hades Judgement Blade"
BSword={}
BSwordWelds={}
local model2=Instance.new("Model")
model2.Parent=nil
model2.Name="Demon Blade"
DBlade={}
DBladeWelds={}
 
prt1=part(3,model1,0,1,Color1,"Part1",vt())
prt2=part(3,model1,0,0,Color2,"Part2",vt())
prt3=part(3,model1,0,0,Color2,"Part3",vt())
prt4=part(3,model1,0,0,Colorr3,"Part4",vt())
prt5=part(3,model1,0,0,Colorr3,"Part5",vt())
prt6=part(3,model1,0.7,0,Color4,"Part6",vt())
prt7=part(3,model1,0.7,0,Color4,"Part7",vt())
prt8=part(3,model1,0.7,0,Color4,"Part8",vt())
prt9=part(3,model1,0.7,0,Color4,"Part9",vt())
prt10=part(3,model1,0,0,Colorr3,"Part10",vt())
prt11=part(3,model1,0,0,Colorr3,"Part11",vt())
prt12=part(3,model1,0,0,Colorr3,"Part12",vt())
 
prtd1=part(3,model2,0,0.4,BrickColor.new("Really red"),"DPart1",vt())
prtd2=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart2",vt())
prtd3=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart3",vt())
prtd4=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart4",vt())
prtd5=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart5",vt())
prtd6=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart6",vt())
prtd7=part(3,model2,0.8,0,BrickColor.new("Really red"),"DPart7",vt())
prtd8=part(3,model2,0.8,0,BrickColor.new("Really red"),"DPart8",vt())
prtd9=part(3,model2,0.5,0.2,BrickColor.new("Really red"),"DPart9",vt())
prtd10=part(3,model2,0.5,0.2,BrickColor.new("Really red"),"DPart10",vt())
prtd11=part(3,model2,0.5,0,BrickColor.new("Really red"),"DPart11",vt())
prtd12=part(3,model2,0,0,BrickColor.new("Really Really black"),"DPart12",vt())
for _,c in pairs(model2:children()) do
if c.className=="Part" then
table.insert(DBlade,c)
end
end
light=it("PointLight")
light.Brightness=.8
light.Color=Color3.new(255/255,50/255,0)
--light.Color=BrickColor.new("Really red")
light.Range=10
light.Parent=prtd9
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1,1,1))
msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(2,10,2))
msh3=mesh("SpecialMesh",prt3,"Head","",vt(0,0,0),vt(2.5,2,2.5))
msh4=mesh("SpecialMesh",prt4,"Sphere","",vt(0,0,0),vt(3,3,3))
msh5=mesh("SpecialMesh",prt5,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(0.5,0.5,1))
msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(.5,20,1))
msh7=mesh("BlockMesh",prt7,"","",vt(0,0,0),vt(.5,20,1))
msh8=mesh("SpecialMesh",prt8,"Wedge","",vt(0,0,0),vt(.5,5,1))
msh9=mesh("SpecialMesh",prt9,"Wedge","",vt(0,0,0),vt(.5,5,1))
msh10=mesh("BlockMesh",prt10,"","",vt(0,0,0),vt(.6,20,0.2))
msh11=mesh("SpecialMesh",prt11,"Wedge","",vt(0,0,0),vt(.6,5,0.1))
msh12=mesh("SpecialMesh",prt12,"Wedge","",vt(0,0,0),vt(.6,5,0.1))
 
mshd1=mesh("BlockMesh",prtd1,"","",vt(0,0,0),vt(5.01,3,5.01))
mshd2=mesh("BlockMesh",prtd2,"","",vt(0,0,0),vt(5.1,3,5.1))
mshd3=mesh("SpecialMesh",prtd3,"Wedge","",vt(0,0,0),vt(5.05,4,3))
mshd4=mesh("SpecialMesh",prtd4,"Wedge","",vt(0,0,0),vt(5.05,4,3))
mshd5=mesh("SpecialMesh",prtd5,"Wedge","",vt(0,0,0),vt(5.5,6,6))
mshd6=mesh("SpecialMesh",prtd6,"Wedge","",vt(0,0,0),vt(5.5,6,6))
mshd7=mesh("BlockMesh",prtd7,"","",vt(0,0,0),vt(3,20,1))
mshd8=mesh("SpecialMesh",prtd8,"Wedge","",vt(0,0,0),vt(1,3,5))
mshd9=mesh("BlockMesh",prtd9,"","",vt(0,0,0),vt(4.5,20,.1))
mshd10=mesh("SpecialMesh",prtd10,"Wedge","",vt(0,0,0),vt(.1,4.5,8))
mshd11=mesh("CylinderMesh",prtd11,"","",vt(0,0,0),vt(4,5.8,4))
mshd12=mesh("CylinderMesh",prtd12,"","",vt(0,0,0),vt(3,5.9,3))
 
wld1=weld(prt1,prt1,Torso,euler(3.7,1.57,0)*cf(-1.5,-2.3,-.5))
wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
wld3=weld(prt3,prt3,prt2,euler(0,0,0)*cf(0,1,0))
wld4=weld(prt4,prt4,prt2,euler(0,0,0)*cf(0,-1,0))
wld5=weld(prt5,prt5,prt4,euler(0,0,0)*cf(0,-0.2,0))
wld6=weld(prt6,prt6,prt5,euler(0,0,0)*cf(0,-2,0.1))
wld7=weld(prt7,prt7,prt5,euler(0,0,0)*cf(0,-2,-0.1))
wld8=weld(prt8,prt8,prt6,euler(0,0,0)*cf(0,-2.5,0))
wld9=weld(prt9,prt9,prt7,euler(0,3.14,0)*cf(0,-2.5,0))
wld10=weld(prt10,prt10,prt5,euler(0,0,0)*cf(0,-2,0))
wld11=weld(prt11,prt11,prt10,euler(0,0,0)*cf(0,-2.5,0.01))
wld12=weld(prt12,prt12,prt10,euler(0,3.14,0)*cf(0,-2.5,-0.01))
 
wldd1=weld(prtd1,prtd1,RightArm,euler(0,0,0)*cf(0,.21,0))
wldd2=weld(prtd1,prtd2,prtd1,euler(0,0,0)*cf(0,.5,0))
wldd3=weld(prtd1,prtd3,prtd2,euler(0,1.57,0)*cf(.21,-.6,0))
wldd4=weld(prtd1,prtd4,prtd2,euler(0,-1.57,0)*cf(-.21,-.6,0))
wldd5=weld(prtd1,prtd5,prtd2,euler(0,-1.57,0)*cf(.1,-.1,0))
wldd6=weld(prtd1,prtd6,prtd5,euler(0,0,3.14)*cf(0,1.2,0))
wldd7=weld(prtd1,prtd7,prtd2,euler(0,0,0)*cf(0,2.5,0))
wldd8=weld(prtd1,prtd8,prtd7,euler(1.57,1.57,0)*cf(0,2.5,0))
wldd9=weld(prtd1,prtd9,prtd7,euler(0,0,0)*cf(0,0,0))
wldd10=weld(prtd1,prtd10,prtd8,euler(0,0,0)*cf(0,0,0.3))
wldd11=weld(prtd1,prtd11,prtd1,euler(1.57,0,0)*cf(0,1,0))
wldd12=weld(prtd1,prtd12,prtd11,euler(0,0,0)*cf(0,0,0))
for _,c in pairs(prtd1:children()) do
if c.className=="Weld" then
table.insert(DBladeWelds,c)
print(c)
end
end
 
for i=-.9,.9,0.2 do
prt13=part(3,model1,0,0,Color1,"Part13",vt())
msh13=mesh("CylinderMesh",prt13,"","",vt(0,0,0),vt(2.2,1,2.2))
wld13=weld(prt13,prt13,prt1,euler(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)*cf(0,i,0))
end
 
local hitbox1=part(3,nil,0,1,BrickColor.new("Really black"),"Hitbox",vt(1,1,1))
local hitbox2=part(3,nil,0,1,BrickColor.new("Really black"),"Hitbox",vt(1,1,1))
 
if (script.Parent.className~="HopperBin") then
Tool=Instance.new("HopperBin")
Tool.Parent=Backpack
Tool.Name="Hades Judgement Blade"
script.Parent=Tool
end
Bin=script.Parent
--Bin=Tool
 
local bodvel=Instance.new("BodyVelocity")
bodvel.Name="FixerVel"
local bg=Instance.new("BodyGyro")
bg.Name="FixerGyro"
 
so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Parent=par
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait()
sou:Play()
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t)
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)}
local ax, ay, az = a.x, a.y, a.z
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
end
 
function QuaternionFromCFrame(cf)
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
local trace = m00 + m11 + m22
if trace > 0 then
local s = math.sqrt(1 + trace)
local recip = 0.5/s
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5
else
local i = 0
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then
i = 2
end
if i == 0 then
local s = math.sqrt(m00-m11-m22+1)
local recip = 0.5/s
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip
elseif i == 1 then
local s = math.sqrt(m11-m22-m00+1)
local recip = 0.5/s
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip
elseif i == 2 then
local s = math.sqrt(m22-m00-m11+1)
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip
end
end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
local xs, ys, zs = x + x, y + y, z + z
local wx, wy, wz = w*xs, w*ys, w*zs
local xx = x*xs
local xy = x*ys
local xz = x*zs
local yy = y*ys
local yz = y*zs
local zz = z*zs
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
end
 
function QuaternionSlerp(a, b, t)
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4]
local startInterp, finishInterp;
if cosTheta >= 0.0001 then
if (1 - cosTheta) > 0.0001 then
local theta = math.acos(cosTheta)
local invSinTheta = 1/math.sin(theta)
startInterp = math.sin((1-t)*theta)*invSinTheta
finishInterp = math.sin(t*theta)*invSinTheta  
else
startInterp = 1-t
finishInterp = t
end
else
if (1+cosTheta) > 0.0001 then
local theta = math.acos(-cosTheta)
local invSinTheta = 1/math.sin(theta)
startInterp = math.sin((t-1)*theta)*invSinTheta
finishInterp = math.sin(t*theta)*invSinTheta
else
startInterp = t-1
finishInterp = t
end
end
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp
end
 
function hideanim()
equipped=false
attack=true
if Mode=="Binary" then
so("rbxasset://sounds\\unsheath.wav",prt1,1,.8)
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(.2,0,-.5)*cf(0,1,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(3.4,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.3)
end
wld1.Part1=Torso
wld1.C0=euler(3.7,1.57,0)*cf(-1.5,-2.3,-.5)
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(0.5,0,0),.3)
end
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
--wld1=weld(prt1,prt1,RightArm,euler(1.57,0,0)*cf(0,1,-0.3))
else
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.8),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.2),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,0)*euler(0.5,-1.2,0)*euler(-.2,0,0),.3)
end
so("http://roblox.com/asset/?id=161006163",RightArm,1,.4)
so("http://roblox.com/asset/?id=160867463",RightArm,1,1.2)
for i=0,1,0.015 do
swait()
for i=1,3 do
if math.random(1,5)==1 then
MagicBlock(BrickColor.new("Really Really black"),RightArm.CFrame*cf(math.random(-100,100)/100,0-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
else
MagicBlock(BrickColor.new("Bright red"),RightArm.CFrame*cf(math.random(-100,100)/100,-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
end
end
end
model2.Parent=nil
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.4)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
end
Torso.Neck.C0=necko
Torso.Neck.C1=necko2
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
Mode="Binary"
attack=false
end
 
function equipanim()
equipped=true
attack=true
for i=0,1,0.2 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(3,0,0),.4)
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.5,0,-0.6),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(3.4,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)
end
so("rbxasset://sounds\\unsheath.wav",prt1,1,.6)
wld1.Part1=RightArm
wld1.C0=euler(.2,0,-.5)*cf(0,1,0)
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.2,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(.5,-0.5,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)
end
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1,-0.5,-0.7),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1,-0.5,0.5),.3)
end
--wld1=weld(prt1,prt1,RightArm,euler(1.57,0,0)*cf(0,1,-0.3))
wld1.C0=euler(1.57,0,0)*cf(0,1,-0.3)
Torso.Neck.C0=necko*euler(0,0,0.5)
RootJoint.C0=RootCF*euler(0,0,-0.5)
RW.C0=cf(1,0.5,-0.5)*euler(1,-0.5,-0.7)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1,-0.5,0.5)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
attack=false
end
 
function Stomp()
Humanoid.WalkSpeed=0
Torso.Velocity=RootPart.CFrame.lookVector*0
so("http://roblox.com/asset/?id=157878578",Torso,1,0.8)
so("http://roblox.com/asset/?id=2760979",Torso,1,0.4)
--so("http://roblox.com/asset/?id=2101148",Torso,1,0.6)
MagicWave(BrickColor.new("Really red"),cf(Torso.Position)*cf(0,-1,0),1,1,1,1.5,1,1.5,0.05)
Dam=math.random(5,10)
Humanoid.Health=Humanoid.Health-Dam
MagniDamage(Torso,50,50,50,math.random(10000,20000),"Knockdown")
--[[for i=0,1,0.2 do
swait()
if Mode=="Binary" then
wld1.C0=clerp(wld1.C0,euler(0.4,0,-0.5)*cf(0,1,0),.3)
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3,0,0.5),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-1.2),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-.5,-0.5)*euler(-0.2,-1.3,0),.3)
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.6,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.2)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.4,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1.2,-.2,-0.5)*euler(-0.3,-1.3,0),.3)
end]]
swait(10)
Humanoid.WalkSpeed=16
end
 
function attackone()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.2,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(2,-0.5,-0.2),.3)
LW.C0=clerp(LW.C0,cf(-.5,0.5,-0.5)*euler(2.5,-0.5,0.8),.3)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
end
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
--con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10000,20000,math.random(1,5),"Normal",RootPart,.5,1) end)
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10000,20000,math.random(1,5),"Normal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=161006212",prt10,1,.7)
blcf=nil
scfr=nil
for i=0,1,0.25 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(1.8,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-.3),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.3),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-.3,-.3),.3)
LW.C0=clerp(LW.C0,cf(-0.8,0.2,-0.5)*euler(.5,-0.5,1),.3)
end
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(2,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-.9),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.9),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-.8,-.3),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.1,-0.5,.7),.3)
end
con1:disconnect()
hitbox1.Parent=nil
attack=false
end
 
function attacktwo()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-1.2),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,1.2),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,1.8,1.5),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-0.5,.8),.3)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
end
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10000,20000,math.random(1,5),"Normal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=161006212",prt10,1,.8)
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,1),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,1.2,0)*euler(-1.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.2,-.2,-1.4),.3)
end
con1:disconnect()
hitbox1.Parent=nil
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,-.785)*cf(0,.8,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1,1,0)*euler(2.8,0,-.785),.3)
LW.C0=clerp(LW.C0,cf(-1,1,0)*euler(2.8,0,.785),.3)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.3)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.3)
end
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10000,20000,math.random(1,5),"Normal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=161006212",prt10,1,.9)
blcf=nil
scfr=nil
for i=0,1,0.25 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(1.7,0,0)*cf(0,1,0),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.2,0,-.6),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.6),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.5,0,.2),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-.2),.4)
end
for i=0,1,0.2 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(2,0,0)*cf(0,.7,-.3),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,-.8),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,.8),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.2,-.4,.4),.4)
end
con1:disconnect()
hitbox1.Parent=nil
attack=false
end
 
function SpinSlash()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.3,0,0.8),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.2,0,-0.8),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(2.2,-1.2,0)*euler(0,0,1),.4)
LW.C0=clerp(LW.C0,cf(.1,0.5,-0.8)*euler(1.8,-0.5,1),.4)
--RH.C0=clerp(RH.C0,RHC0*cf(0,0,0)*euler(0.2,0.2,.5),.3)
--LH.C0=clerp(LH.C0,LHC0*cf(.5,0.2,0)*euler(0,.5,0.2),.3)
end
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,10000,15000,math.random(1,5),"Normal",RootPart,.2,1) end)
blcf=nil
scfr=nil
so("http://roblox.com/asset/?id=161006212",prt10,1,.6)
repeat
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
for i=0,1,0.15 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(1.2,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.3,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0,0,2.3),.25)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.57,-1.57,0)*euler(-0.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,-1.57,0)*euler(0.5,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
for i=0,1,0.05 do
swait()
if i>=0.45 and i<=0.5 then
so("http://roblox.com/asset/?id=161006212",prt10,1,.7)
end
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0,0,2.3+6*i),1)
end
until hold==false
con1:disconnect()
hitbox1.Parent=nil
attack=false
end
 
function BinarySwing()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1)*euler(0,0,-0.8),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(.5,-2,0)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,-.1,-0.5)*euler(1,-1.8,0)*euler(.9,0,0),.3)
RH.C0=clerp(RH.C0,RHC0*cf(.2,1,.1)*euler(0,-.5,-.2),.3)
LH.C0=clerp(LH.C0,LHC0*cf(-.2,1,.1)*euler(0,.5,.2),.3)
end
Humanoid.Jump=true
bodvol=Instance.new("BodyVelocity")
bodvol.Parent=RootPart
bodvol.velocity=vt(0,1,0)*100
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
--Torso.Velocity=vt(0,1,0)*100
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,20,30,math.random(10000,20000),"Normal",RootPart,.2,1) end)
so("http://roblox.com/asset/?id=161006212",prt10,1,.8)
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-2.4,0)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-.2,.8,-0.5)*euler(3.1,-1.8,0)*euler(.9,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.8),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,1.3),.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
con1:disconnect()
hitbox1.Parent=nil
bodvol.Parent=nil
attack=false
end
 
function BinaryImpulse()
attack=true
if impulse==1 then
impulse=2
Humanoid.Jump=true
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0.5,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
blcf=nil
scfr=nil
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,20000,30000,math.random(10,20),"Normal",RootPart,.5,1) end)
for i=1,3 do
so("http://roblox.com/asset/?id=161006212",prt10,1,1)
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,0.5,6.6*i)
end
end
con1:disconnect()
hitbox1.Parent=nil
elseif impulse==2 then
impulse=3
Humanoid.Jump=true
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,-0.5,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.45)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.7)*euler(1.5,-1.5,0)*euler(.7,0,0),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
blcf=nil
scfr=nil
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(10000,20000),"Normal",RootPart,.5,1) end)
for i=1,3 do
so("http://roblox.com/asset/?id=161006212",prt10,1,1.05)
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(-.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.5,-1.5,0)*euler(.5,0,0),.3)
RootJoint.C0=RootCF*euler(0,-0.5,6.6*i)
end
end
con1:disconnect()
hitbox1.Parent=nil
elseif impulse==3 then
impulse=1
for i=0,1,0.2 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.57,0,-0.785)*cf(0,1,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.8,-0.5)*euler(3,0,-0.785),.45)
LW.C0=clerp(LW.C0,cf(-1,0.8,-0.5)*euler(3,0,0.785),.45)
RH.C0=clerp(RH.C0,RHC0*euler(-.2,0,0),.45)
LH.C0=clerp(LH.C0,LHC0*euler(-.2,0,0),.45)
end
Humanoid.Jump=true
blcf=nil
scfr=nil
hitbox1.Parent=model1
hitbox1.Size=vt(1,5,1)
hitbox1.Transparency=1
hitbox1.CFrame=prt10.CFrame
con1=hitbox1.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(20000,30000),"Normal",RootPart,.5,1) end)
for i=1,3 do
so("http://roblox.com/asset/?id=161006195",prt10,1,1)
for i=0,1,0.1 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox1.CFrame=prt10.CFrame
wld1.C0=clerp(wld1.C0,euler(2,0,-0.785)*cf(0,1,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.2,0,0),.45)
RW.C0=clerp(RW.C0,cf(1,0.3,-0.5)*euler(.5,0,-0.785),.3)
LW.C0=clerp(LW.C0,cf(-1,0.3,-0.5)*euler(.5,0,0.785),.3)
RootJoint.C0=RootCF*euler(6.28*i,0,0)
end
end
con1:disconnect()
hitbox1.Parent=nil
end
attack=false
end
 
function Bash()
attack=true
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1)*euler(0.5,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1,-1,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,2.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1,0),.3)
end
Torso.Velocity=RootPart.CFrame.lookVector*200
so("http://roblox.com/asset/?id=2767090",Torso,1,.7)
MagicWave(Color4,RootPart.CFrame*euler(1.57,0,0),1,1,1,1,1,1,0.05)
hit=nil
for i=1,20 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
Torso.Velocity=RootPart.CFrame.lookVector*0
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(1.1,0,0)*cf(0,1,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-1.4),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(3,-1.4,0)*euler(-.6,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(2.3,-1.4,0)*euler(.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(0,-1.57,0),.3)
end
so("http://roblox.com/asset/?id=161006195",prt10,1,.5)
blcf=nil
scfr=nil
for i=0,1,0.2 do
swait()
local blcf = prt10.CFrame*CFrame.new(0,.5,0)
if scfr and (prt10.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
wld1.C0=clerp(wld1.C0,euler(2.2,0,0)*cf(0,.8,-0.3),.45)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1.4)*euler(0.4,0,0),.45)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.3)*euler(0,0,-1.4),.45)
RW.C0=clerp(RW.C0,cf(.5,0.2,-0.5)*euler(3,-1.4,0)*euler(-2.7,0,0),.45)
LW.C0=clerp(LW.C0,cf(-1.2,0.1,-0.3)*euler(0,-1.4,0)*euler(.5,0,0),.45)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.45)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.45)
end
hit,pos=rayCast(prt10.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,100,Character)
if hit~=nil then
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
Col=hit.BrickColor
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.Material=hit.Material
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
so("http://roblox.com/asset/?id=157878578",ref,.6,1.2)
MagicWave(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,50,50,50,math.random(10000,20000),"Knockdown")
end
swait(50)
Humanoid.WalkSpeed=16
attack=false
end
 
function UnleashTheDemon()
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Now you're in for a show, you'll be sent to the abyss when i'm done!", "Green")
wait(2.6)
game.Chat:Chat(game.Players.LocalPlayer.Character.Head,"Mannitus's Voiding Blade!", "Red")
attack=true
so("rbxasset://sounds\\unsheath.wav",prt1,1,.8)
for i=0,1,0.1 do
swait()
wld1.C0=clerp(wld1.C0,euler(.2,0,-.5)*cf(0,1,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.4,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1.3,0.5,0.2)*euler(3.4,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,RHC0,.4)
LH.C0=clerp(LH.C0,LHC0,.4)
end
wld1.Part1=Torso
wld1.C0=euler(3.7,1.57,0)*cf(-1.5,-2.3,-.5)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,-0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.3,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.4,-1.57,0)*euler(1.2,0,0),.3)
end
so("http://roblox.com/asset/?id=178452217",RightArm,.5,.4)
so("http://roblox.com/asset/?id=168586586",RightArm,.5,.6)
so("http://roblox.com/asset/?id=160740121",RightArm,1,.8)
num=0
for i=0,1,0.01 do
swait()
if num>=10 then
num=0
MagicWave(BrickColor.new("Really Really black"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
end
for i=1,2 do
if math.random(1,5)==1 then
MagicBlock(BrickColor.new("Really Really black"),RightArm.CFrame*cf(math.random(-100,100)/100,-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
else
MagicBlock(BrickColor.new("Bright red"),RightArm.CFrame*cf(math.random(-100,100)/100,-math.random(0,700)/100,math.random(-100,100)/100),math.random(30,80)/100,math.random(30,80)/100,math.random(30,80)/100,.5,.5,.5,0.05)
end
end
num=num+1
end
so("http://roblox.com/asset/?id=168586621",RightArm,1,.5)
so("http://roblox.com/asset/?id=160867463",RightArm,1,.8)
for i=1,4 do
MagicBlock(BrickColor.new("Bright red"),RightArm.CFrame*cf(0,-.5-math.random(0,500)/100,0),2,2,2,.5,.5,.5,0.05)
end
MagicWave(BrickColor.new("Really red"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,.5,.3,.5,0.01)
Mode="Demon"
model2.Parent=Character
for i=1,#DBlade do
DBlade[i].Parent=model2
DBladeWelds[i].Parent=DBlade[1]
end
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.2,-0.5,1),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(1.4,0.5,-1.3),.3)
end
swait(50)
attack=false
end
 
function Demonattackone()
attack=true
--[[
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.2),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,0)*euler(0.5,-1.2,0)*euler(-.2,0,0),.3)
]]
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,-1),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.3,0,.5),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(.7,0,-0.7),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.6)*euler(-.3,1.57,0)*euler(0,.5,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.3,0)*euler(0.5,-.8,0)*euler(-.5,0,0),.3)
end
hitbox2.Parent=model2
hitbox2.Size=vt(1,6,1)
hitbox2.Transparency=1
hitbox2.CFrame=prtd7.CFrame
con1=hitbox2.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(10000,50000),"Lifesteal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=28144425",prtd7,1,.7)
blcf=nil
scfr=nil
for i=0,1,0.08 do
swait()
local blcf = prtd7.CFrame*CFrame.new(0,-.5,0)
if scfr and (prtd7.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox2.CFrame=prtd7.CFrame
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.2,0,1),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.7),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-0.5,1)*euler(1.3,0,-1.7),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(-.3,1.57,0)*euler(0,-1,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*euler(-0.3,-2.3,0)*euler(0,0,0),.3)
end
con1:disconnect()
hitbox2.Parent=nil
attack=false
end
 
function Demonattacktwo()
attack=true
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.4)*euler(0.1,0,1.2),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,-0.7),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.4,-1.2,.6)*euler(1.1,0,-1.7),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,0)*euler(-.1,1.57,0)*euler(0,-1,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.3)*euler(-0.1,-2.3,0)*euler(0,0,0),.3)
end
hitbox2.Parent=model2
hitbox2.Size=vt(1,6,1)
hitbox2.Transparency=1
hitbox2.CFrame=prtd7.CFrame
con1=hitbox2.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(10000,50000),"Lifesteal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=28144425",prtd7,1,.5)
blcf=nil
scfr=nil
for i=0,1,0.1 do
swait()
local blcf = prtd7.CFrame*CFrame.new(0,-.5,0)
if scfr and (prtd7.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
hitbox2.CFrame=prtd7.CFrame
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.4)*euler(0.1,0,-0.8),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.7),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-.8,.6)*euler(0.5,0,.5),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.7,0,-0.7),.3)
RH.C0=clerp(RH.C0,cf(1,-.8,-0.3)*euler(-0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,-0.2)*euler(0.2,-1.2,0)*euler(-.2,0,0),.3)
end
con1:disconnect()
hitbox2.Parent=nil
attack=false
end
 
function Demonattackthree()
attack=true
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.1,0,-0.2),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2.9,-1.8,0)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,-.3)*euler(-0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.7,0)*euler(0.2,-1.2,0)*euler(-.2,0,0),.3)
end
Humanoid.WalkSpeed=0
hitbox2.Parent=model2
hitbox2.Size=vt(1,6,1)
hitbox2.Transparency=1
hitbox2.CFrame=prtd7.CFrame
con1=hitbox2.Touched:connect(function(hit) Damagefunc(hit,50,50,math.random(10000,50000),"Lifesteal",RootPart,.5,1) end)
so("http://roblox.com/asset/?id=28144425",prtd7,1,.6)
blcf=nil
scfr=nil
for i=0,1,0.15 do
swait()
local blcf = prtd7.CFrame*CFrame.new(0,-.5,0)
if scfr and (prtd7.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.8)*euler(0.5,0,0.6),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1,0,-0.6),.4)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.55,-1.5,0)*euler(.3,0,0),.4)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.4)
RH.C0=clerp(RH.C0,cf(1,-.1,-.4)*euler(0.4,1.57,0)*euler(-.2,0,0),.4)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*euler(-0.2,-1.2,0)*euler(-.2,0,0),.4)
if i==0.6 then
hit,pos=rayCast(prtd8.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if hit~=nil then
local ref=part(3,workspace,0,1,BrickColor.new("Really black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,5 do
Col=hit.BrickColor
local groundpart=part(3,workspace,0,0,Col,"Ground",vt(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.Material=hit.Material
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-200,200)/100,0,math.random(-200,200)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,3)
end
so("http://roblox.com/asset/?id=157878578",ref,.6,1.5)
MagicWave(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,50,50,50,math.random(10000,20000),"Normal")
end
end
end
con1:disconnect()
hitbox2.Parent=nil
swait(10)
Humanoid.WalkSpeed=16
attack=false
end
 
function LetItBuild()
attack=true
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.8)*euler(0.2,0,-1),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.5,-0.5,1.5)*euler(.6,0,.4),.3)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.5)*euler(1.57,-1.57,0)*euler(1.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,-.5)*euler(-0.2,2,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.2,0)*euler(0.5,-.6,0)*euler(-.4,0,0),.3)
end
local num=0
local magik=0
local num2=0
while holdx==true do
swait()
if magik<25 then
if num>=10 then
Humanoid:TakeDamage(0)
pos1=Torso.Position+vt(math.random(-200,200)/100,math.random(-200,200)/100,math.random(-200,200)/100)
pos2=prtd8.Position--+vt(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
Lightning(pos1,pos2,5,3,"Really red",.1,.5,.5)
MagicCircle(BrickColor.new("Really red"),cf(pos1),5,5,5,1,1,1,.1)
MagicBlood(BrickColor.new("Really red"),Torso.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.1,.1,.1,.1,2,.1,0.05)
so("http://www.roblox.com/asset/?id=178452221",Torso,.1,1.5)
magik=magik+1
num=0
end
end
num=num+1
num2=num2+magik
if num2>=50 then
MagicBlood(BrickColor.new("Really Really black"),cf(prtd8.Position)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.1,.1,.1,.1,1,.1,0.1)
num2=0
end
--MagicBlock(BrickColor.new("Really red"),cf(prtd8.Position)*cf(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),magik/5,magik/5,magik/5,magik/8,magik/8,magik/8,.1)
end
Torso.Velocity=RootPart.CFrame.lookVector*(10*magik)
blcf=nil
scfr=nil
hitbox2.Parent=model2
hitbox2.Size=vt(1,6,1)
hitbox2.Transparency=1
hitbox2.CFrame=prtd7.CFrame
con1=hitbox2.Touched:connect(function(hit) Damagefunc(hit,math.ceil((200000/200000)),magik,1,"Lifesteal",RootPart,.5,1) end)
for i=1,3 do
so("http://roblox.com/asset/?id=28144425",prtd7,1,1)
for i=0,1,0.1 do
swait()
hitbox2.CFrame=prtd7.CFrame
local blcf = prtd7.CFrame*CFrame.new(0,-.5,0)
if scfr and (prtd7.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=RootCF*cf(0,0,-0.8)*euler(0,0,6.28*i)*euler(0.2,0,-1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.5,-0.5,1.5)*euler(.4,0,0),.3)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.5)*euler(1.57,-1.57,0)*euler(1.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.6,-.5)*euler(-0.2,2,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.2,0)*euler(0.5,-.6,0)*euler(-.4,0,0),.3)
end
end
con1:disconnect()
hitbox2.Parent=nil
attack=false
end
 
function YourMoveCreep()
attack=true
local pers=nil
for i=0,1,0.1 do
swait()
cost=Humanoid.Health-0
Humanoid:TakeDamage(0)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.7)*euler(0.2,0,-1.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0.2,1.3),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,-0.5,1)*euler(.5,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,-0.4,0)*euler(0,0,-1.7),.3)
RH.C0=clerp(RH.C0,cf(.1,-1,-.9)*euler(-0.2,1.57,0)*euler(-.7,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-.4,0)*euler(0.2,-1.2,0)*euler(-.2,1.4,0),.3)
end
local blockprt=part(3,Character,0,1,BrickColor.new("Really Really black"),"Block",vt(8,.1,8))
blockprt.Anchored=true
blockprt.CFrame=LeftArm.CFrame*cf(0,-1,0)
conbl=blockprt.Touched:connect(function(hit)
if hit.Parent.Parent:findFirstChild("Torso")~=nil then
hit=hit.Parent.Parent.Torso
end
if hit.Parent:findFirstChild("Torso")~=nil and hit.Parent~=Character and guard==true then
pers=hit
print("HIT")
guard=false
end
end)
num=0
while guard==true do
swait()
if num>10 then
num=0
MagicBlock(BrickColor.new("Really red"),LeftArm.CFrame*cf(0,-1,0),1,1,1,.7,.7,.7,0.05)
MagicCircle(BrickColor.new("Really Really black"),LeftArm.CFrame*cf(0,-1,0),1,.1,1,6,0,6,0.1)
end
blockprt.CFrame=LeftArm.CFrame*cf(0,-1,0)
num=num+1
end
conbl:disconnect()
blockprt.Parent=nil
print(pers)
if pers~=nil then
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.7)*euler(-0.2,0,1.6),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,-0.2,-1),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,-1,1)*euler(1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)
RH.C0=clerp(RH.C0,cf(.1,-1,-.9)*euler(-0.2,1.57,0)*euler(-.7,-1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-.8,-.4,0)*euler(0.2,-1.2,0)*euler(-.2,1.4,0),.3)
end
swait(200)
end
attack=false
end
 
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then
Damagefunc(head,mindam,maxdam,knock,Type,Part,.2,1,nil,1)
end
end
end
end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
 
local Point=Torso.CFrame*cf(0,Torso.Size.Y,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh=Instance.new("CylinderMesh")
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
effectsmsh.Name="Mesh"
local effectsg=Instance.new("Part")
effectsg.formFactor=3
effectsg.CanCollide=false
effectsg.Name="Eff"
effectsg.Locked=true
effectsg.Anchored=true
effectsg.Size=Vector3.new(0.5,1,0.5)
effectsg.Parent=workspace
effectsmsh.Parent=effectsg
effectsg.BrickColor=BrickColor.new(Color)
effectsg.Reflectance=Ref
local point1=P1
local mg=(LP.p - point1.p).magnitude
effectsg.Size=Vector3.new(0.5,mg,0.5)
effectsg.CFrame=cf((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale=Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i=0,1,0.05 do
wait()
Part.Transparency=1*i
Mesh.Scale=Vector3.new(0.5-0.5*i,1,0.5-0.5*i)
end
Part.Parent=nil
end
end),effectsg,effectsmsh)
end
 
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end
 
function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

if len2 > 0.01 then
end
return unpack(list)
end
 --[[
Things for effects
put the variables in one table
like effect={brick,interval,i}
]]
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Block1",delay,x3,y3,z3}) --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh,dur)
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
--[[coroutine.resume(coroutine.create(function(Part,Mesh)
local wld=nil
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
end
 
function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Character,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
--table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
Effects[#Effects+1]={prt,"Cylinder",delay,x3,y3,z3} --part, type, delay
--[[coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)]]
end
 
function MagicBlood(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Blood",delay,x3,y3,z3})
end
 
function ElecEffect(cff,x,y,z)
local prt=part(3,workspace,0,0,BrickColor.new("Bright red"),"Part",vt(1,1,1))
prt.Anchored=true
prt.CFrame=cff*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
prt.CFrame=cf(prt.Position)
--prt.CFrame=cf(cff)*cf(math.random(-x,x),math.random(-y,y),math.random(-z,z))
game:GetService("Debris"):AddItem(prt,2)
xval=math.random()/2
yval=math.random()/2
zval=math.random()/2
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(xval,yval,zval))
Effects[#Effects+1]={prt,"Elec",0.1,x,y,z,xval,yval,zval} --part, type, delay
end
 
function Lightning(p0,p1,tym,ofs,col,th,tra,last)
--[[p0=pos1
p1=pos2
tym=times
ofs=offset
col=color
th=size
tra=transparency
last=lastingtime]]
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,last)
end
end
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        -- and hit.Parent~=CannonTarget.Parent or hit.Parent~=RailgunTarget.Parent
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2)
                        so("http://www.roblox.com/asset/?id=10209590",hit,1,math.random(50,100)/100)
                        --so("rbxasset://sounds\\unsheath.wav",hit,1,math.random(200,250)/100)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                if Mode=="Demon" then
                Damage=Damage+damcount
                end
--                h:TakeDamage()
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                else
                h.Health=h.Health-(Damage/0)
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=cf(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/100
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>-100 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Lifesteal" then
                for i=1,5 do
                MagicBlood(BrickColor.new("Really red"),hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.1,.1,.1,.1,2,.1,0.05)
                end
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/250
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>-250 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                Heal=math.ceil(Damage/25100)
                Humanoid.Health=Humanoid.Health+Heal
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,30,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Charge" then
                Charge=Charge+1
                coroutine.resume(coroutine.create(function(Part)
                swait(30)
                for i=1,5 do
                swait(5)
                so("rbxasset://sounds\\unsheath.wav",hit,1,2)
                MagicCircle(BrickColor.new("Bright red"),hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,.1,.2,8,.1,0.05)
                newdam=math.random(1,5)
                if blocked==false then
                h:TakeDamage()
                else
                h:TakeDamage(newdam/0)
                end
                end
                end),hit)
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=1
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=cf(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
 
combo=0
function ob1d(mouse)
hold=true
if attack==true or equipped==false then return end
if Mode=="Binary" then
idle=0
if Anim=="Run" then
SpinSlash()
else
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=0
attackthree()
end
end
else
if combo==0 then
combo=1
Demonattackone()
elseif combo==1 then
combo=2
Demonattacktwo()
elseif combo==2 then
combo=0
Demonattackthree()
end
end
coroutine.resume(coroutine.create(function()
for i=1,20 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
--equipanim()
end
end))
end
 
function ob1u(mouse)
hold = false
end
 
buttonhold = false
 
eul=0
holdx=false
equipped=false
function key(key)
if key=="c" then
if guard==true then
guard=false
else
guard=true
end
end
if key=="x" then
holdx=true
end
if attack==true then return end
if key=="f" then
if equipped==false then
equipped=true
RSH=ch.Torso["Right Shoulder"]
LSH=ch.Torso["Left Shoulder"]
--
RSH.Parent=nil
LSH.Parent=nil
--
RW.Name="Right Shoulder"
RW.Part0=ch.Torso
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
RW.C1=cf(0, 0.5, 0)
RW.Part1=ch["Right Arm"]
RW.Parent=ch.Torso
--
LW.Name="Left Shoulder"
LW.Part0=ch.Torso
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
LW.C1=cf(0, 0.5, 0)
LW.Part1=ch["Left Arm"]
LW.Parent=ch.Torso
--
equipanim()
else
equipped=false
hideanim()
swait(0)
RW.Parent=nil
LW.Parent=nil
RSH.Parent=player.Character.Torso
LSH.Parent=player.Character.Torso
end
end
if equipped==false then return end
if Mode=="Binary" then
if key=="q" then
idle=500
end
if key=="z" and hitfloor~=nil then
BinarySwing()
end
if key=="x" then
BinaryImpulse()
end
if key=="c" then
Bash()
end
if key=="v" then
UnleashTheDemon()
end
end
if Mode=="Demon" then
if key=="x" then
LetItBuild()
end
if key=="c" then
YourMoveCreep()
end
end
if key=="0" then
Humanoid.WalkSpeed=(180)
end
end
 
function key2(key)
if key=="0" then
Humanoid.WalkSpeed=16
end
if key=="x" then
holdx=false
end
end
 
function s(mouse)
mouse.Button1Down:connect(function() ob1d(mouse) end)
mouse.Button1Up:connect(function() ob1u(mouse) end)
mouse.KeyDown:connect(key)
mouse.KeyUp:connect(key2)
 
player=Player
ch=Character
MMouse=mouse
end
 
function ds(mouse)
end
 
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
print("Fixer the Demon Mercenary loaded.")
 
local thenum=0
while true do
swait()
if Mode=="Demon" then
if thenum>=5 then
ElecEffect(prtd7.CFrame,2,4,2)
thenum=0
end
thenum=thenum+1
for _,c in pairs(Character:children()) do
for _,v in pairs(c:children()) do
if v.className=="BodyGyro" or v.className=="BodyPosition" or v.className=="BodyVelocity" or v.className=="BodyAngularVelocity" then
if v.Name~="FixerVel" and v.Name~="FixerGyro" then
v.Parent=nil
end
end
end
end
end
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true then
if Anim=="Idle" and attack==false and Mode=="Binary" then
idle=idle+1
else
idle=0
end
if idleanim>=0.3 then
idleanim2=true
elseif idleanim<=0 then
idleanim2=false
end
if idleanim2==false then
if Anim=="Walk" then
idleanim=idleanim+0.005
elseif Anim=="Idle" then
idleanim=idleanim+0.003
end
else
if Anim=="Walk" then
idleanim=idleanim-0.005
elseif Anim=="Idle" then
idleanim=idleanim-0.003
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then
Anim="Jump"
if attack==false and Mode=="Binary" then
wld1.C0=clerp(wld1.C0,euler(0.4,0,-0.5)*cf(0,1,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3,0,-0.2),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-0.5,-1)*euler(-0.5,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.7,-1.57,0),.2)
end
if attack==false and Mode=="Demon" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(.8,-0.5,.8)*euler(.1,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-0.2),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,-.1)*euler(0.1,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.3,-.2)*euler(0.4,-1.57,0)*euler(0,0,0),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then
Anim="Fall"
if attack==false and Mode=="Binary" then
wld1.C0=clerp(wld1.C0,euler(0.4,0,-0.5)*cf(0,1,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(2.6,0,-0.2),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0,0,-0.5),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.4,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
end
if attack==false and Mode=="Demon" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.2,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.6,0,.5),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.4,0,-1),.3)
RH.C0=clerp(RH.C0,cf(1,-.7,-.1)*euler(-0.1,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,-.2)*euler(0.8,-1.57,0)*euler(0,0,0),.3)
end
elseif torvel<1 and hitfloor~=nil then
if Anim=="Fall" then
if velderp<=-70 then
coroutine.resume(coroutine.create(function()
Stomp()
end))
end
end
Anim="Idle"
if idle<=500 then
if attack==false and Mode=="Binary" then
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0.5),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,-0.5),.3)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1-(idleanim/4),-0.5+idleanim,-0.7+(idleanim/2)),.3)
LW.C0=clerp(LW.C0,cf(-1+idleanim,0.5-idleanim,-0.5)*euler(1-idleanim,-0.5+idleanim,0.5),.3)
RH.C0=clerp(RH.C0,RHC0,.2)
LH.C0=clerp(LH.C0,LHC0,.2)
end
if attack==false and Mode=="Demon" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5-idleanim)*euler(0.4+(idleanim/2),0,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-idleanim/2,0,0.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.4,-0.5,1)*euler(.1+idleanim,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-0.2,0,-0.2-idleanim),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-idleanim)*euler(-0.2-(idleanim/2),1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5+idleanim,0)*euler(0.5+(idleanim/2),-1.2,0)*euler(-.2,0,0),.3)
end
else
if attack==false and Mode=="Binary" then
--wld1.C0=clerp(wld1.C0,euler(.2,0,0.1)*cf(0,.8,.3),.1)
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-.3),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0.1+(idleanim/2),0,0),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5)*euler(0.1,0,0),.1)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.7,0,1.5),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0,0,.2),.1)
LW.C0=clerp(LW.C0,cf(-1.2,0.5,-0.3)*euler(1.4,0,.8),.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(-1.2,1.57,0),.15)
LH.C0=clerp(LH.C0,cf(-1.1,0.4,-0.8)*euler(-0.05,-1.57,0),.15)
end
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
if Anim=="Fall" then
if velderp<=-70 then
coroutine.resume(coroutine.create(function()
Stomp()
end))
end
end
Anim="Walk"
if attack==false and Mode=="Binary" then
wld1.C0=clerp(wld1.C0,euler(0.4,0,-0.5)*cf(0,1,0),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0.1,0,0),.2)
--RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-0.1,0,0.2),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(3-idleanim,0,-0.2+(idleanim/2)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.5,-0.5)*euler(1.57,-(idleanim/2),1.3-(idleanim/2)),.2)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
if attack==false and Mode=="Demon" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5)*euler(0.4,0,0),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.5,-0.5,1.5)*euler(.2,0,.2+idleanim),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(idleanim,0,-0.2),.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*euler(0.2,1.57,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,0)*euler(0.5,-1.57,0)*euler(0,0,0),.3)
end
elseif torvel>=22 and hitfloor~=nil then
if Anim=="Fall" then
if velderp<=-70 then
coroutine.resume(coroutine.create(function()
Stomp()
end))
end
end
Anim="Run"
if attack==false and Mode=="Binary" then
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.3,0,0.5),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*euler(0.5,0,-0.5),.4)
wld1.C0=clerp(wld1.C0,euler(1.57,0,0)*cf(0,1,-0.3),.4)
RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*euler(1.2,-0.8,-0.2),.4)
LW.C0=clerp(LW.C0,cf(-.7,0.5,-0.7)*euler(1.2,-0.5,0.8),.4)
RH.C0=clerp(RH.C0,RHC0*cf(0,0,0)*euler(0.2,0.2,.5),.3)
--LH.C0=clerp(LH.C0,LHC0*cf(.5,0.5,-.2)*euler(-0.5,0.5,-0.7),.3)
LH.C0=clerp(LH.C0,LHC0*cf(.5,0.2,0)*euler(0,.5,0.2),.3)
end
if attack==false and Mode=="Demon" then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.8)*euler(0.5,0,-0.4),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(-0.2,0,.4),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(1.5,-0.5,1.5)*euler(.2,0,.4),.3)
LW.C0=clerp(LW.C0,cf(0,0.5,-0.5)*euler(1.57,-1.57,0)*euler(1.5,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-.3,-.5)*euler(-0.2,2,0)*euler(0,0,0),.3)
LH.C0=clerp(LH.C0,cf(-1,-.2,0)*euler(0.5,-1.2,0)*euler(-.2,0,0),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[1].Mesh
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end