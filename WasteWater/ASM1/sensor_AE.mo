within WasteWater.ASM1;
model sensor_AE "AE"

  extends WasteWater.Icons.sensor_AE;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-92,-92},
            {-72,-72}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-76,-72},
            {-56,-92}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-60,-72},
            {-40,-92}})));

  Real AE(start=0);
  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(AE*T) =  2/1.8/1000*1333*(Kla3+Kla4+Kla5);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_AE;
