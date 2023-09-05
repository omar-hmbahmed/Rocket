%Omar Ahmed
%Creating the GetMass function

function Mass = GetMass(t,Mdata)

%Calculating mass
if t < Mdata.burnTime
    Mass = Mdata.M - Mdata.burnRate*t;
else
    Mass = Mdata.finalMass;
end