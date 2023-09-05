%Omar Ahmed
%Creating the GetDrag function

function Drag = GetDrag(v,Mdata)

%Defining how the function will use these input arguments
dragConstant = Mdata.dragConstant;
Drag = -dragConstant * v * abs(v);
