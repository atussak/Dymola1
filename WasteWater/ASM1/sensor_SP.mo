within WasteWater.ASM1;
model sensor_SP "SP"

  extends WasteWater.Icons.sensor_O2;

 Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10, -110},{10,-90}})));

  Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{-88,36},
            {-68,56}})));

 Real SP(start=0);
 Real T(start=1e-3);

equation
  In.Q = 0;

  der(T)  =  1.0;
  der(SP*T) =  0.75*(In.Xs+In.Xi+In.Xbh+In.Xba)*Q;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_SP;
