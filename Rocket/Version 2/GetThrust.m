%Omar Ahmed
%Creating the GetThrust function

function Thrust = GetThrust(Th,t ,burnTime)

%sets up a loop that will allow the thrust to  become zero after the burn
%time
if t < burnTime
    Thrust = Th;
else
    Thrust = 0;
end


