within WasteWater.ASM1;
model sensor_SP "SP"

  extends WasteWater.Icons.sensor_SP;

 Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10, -110},{10,-90}})));

  Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{-92,-10},
            {-72,10}}), iconTransformation(extent={{-92,-10},{-72,10}})));
  Modelica.Blocks.Interfaces.RealOutput SP(start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

 Real T(start=1e-3);

equation
  In.Q = 0;

  der(T)  =  1.0;
  der(SP*T) =  0.75*(In.Xs+In.Xi+In.Xbh+In.Xba)*Q;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics
        ={
        Line(points={{-88,0},{-50,0}})}));
end sensor_SP;
