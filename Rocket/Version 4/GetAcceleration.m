 %Omar Ahmed
 %Creating the GetAcceleration function

function a = GetAcceleration(t,Mdata)
%4. Calculate the acceleration.
        %4.1 Calculate the force acting on the object.
        g = Mdata.g;
        M = GetMass(t,Mdata);
        Th = Mdata.Th;
        burnTime = Mdata.burnTime;
        Thrust = GetThrust(t,Mdata);
        Force = Thrust - M*g;
        
        %4.2. Use Newton's second law (F = ma) to find the acceleration.
        a = Force / M;

 