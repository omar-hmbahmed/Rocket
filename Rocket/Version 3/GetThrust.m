%Omar Ahmed
%Creating the GetThrust function

function Thrust = GetThrust(t ,Mdata)

%Allows the constants to be called from Mdata
g = Mdata.g;
M = Mdata.M;
Th = Mdata.Th;
burnTime = Mdata.burnTime;

%sets up a loop that will allow the thrust to  become zero after the burn
%time
if t < burnTime
    Thrust = Th;
else
    Thrust = 0;
end


