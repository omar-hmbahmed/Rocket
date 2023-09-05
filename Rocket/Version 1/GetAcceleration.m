 %Omar Ahmed
 %Creating the GetAcceleration function

function a = GetAcceleration(Th,M,g)
%4. Calculate the acceleration.
        %4.1 Calculate the force acting on the object.
        Force = Th - M*g;
        %4.2. Use Newton's second law (F = ma) to find the acceleration.
        a = Force / M;

 