within WasteWater.ASM1;
model sensor_ME "ME"

  extends WasteWater.Icons.sensor_AE;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-92,-92},
            {-72,-72}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-76,-72},
            {-56,-92}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-60,-72},
            {-40,-92}})));

  Real ME(start=0);
  Real T(start=1e-3);

  parameter Real V = 1333;
  Real expression;
equation
  expression = 0;

 expression =  if Kla3 < 20 then expression + 0.005*V else expression;
 expression =  if Kla4 < 20 then expression + 0.005*V else expression;
 expression =  if Kla5 < 20 then expression + 0.005*V else expression;

  der(T)  =  1.0;
  der(ME*T) = 24*(expression);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_ME;
