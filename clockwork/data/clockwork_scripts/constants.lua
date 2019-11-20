if not async then
  dofile("data/scripts/lib/coroutines.lua");
end;
dofile("data/clockwork_scripts/functions.lua");

coords=false;
clocks=false;
rain=false;
special_rain=false;
special_rain_path="";
rain_mat="";
rain_den=0;
rain_grav=0;
local gui=GuiCreate();
local X=GuiText(gui,0,50,"");
local Y=GuiText(gui,0,50,"");
local clocked=GuiText(gui,0,50,"");

async_loop(function()
if coords==true then
local x,y=localplayerPos();
X=GuiText(gui,1,0,"X: "..tostring(x));
Y=GuiText(gui,1,10,"Y: "..tostring(y));
elseif coords==false then
X=GuiText(gui,0,250,"");
Y=GuiText(gui,0,250,"");
end;
if clocks==true then
CURRENT_TIME=getTime();
HOUR=string.sub(tostring(CURRENT_TIME),3,3);
MINUTES=string.sub(tostring(CURRENT_TIME),4,5);
local AMORPM="";
if HOUR=="1" or HOUR=="2" or HOUR=="3" or HOUR=="4" or HOUR=="5" then
AMORPM="PM";
else
AMORPM="AM";
end;
clocked=GuiText(gui,145,0,HOUR..":"..MINUTES.." "..AMORPM);
elseif clocks==false then
clocked=GuiText(gui,0,250,"");
end;
if rain==true then
local x,y=localplayerPos();
local rando=math.random(-500,500);
GameCreateParticle(rain_mat,x+rando,y-500,rain_den,0,rain_grav,false,false);
elseif rain==false then
rain_mat="";
rain_den=0;
rain_grav=0;
end;
if special_rain==true then
local x,y=localplayerPos();
local rando=math.random(-500,500);
EntityLoad(special_rain_path,x+rando,y-500);
elseif special_rain==false then
special_rain_path="";
end;
wait(0);
end);

async_loop(function()
if gui~=nil then
GuiStartFrame(gui);
end;
wait(0);
end);