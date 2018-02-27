within WasteWater.ASM1;
model sensor_ME "ME"

  extends WasteWater.Icons.sensor_ME;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-92,18},
            {-72,38}}), iconTransformation(extent={{-92,18},{-72,38}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-92,10},
            {-72,-10}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-92,-18},
            {-72,-38}}), iconTransformation(extent={{-92,-18},{-72,-38}})));
  Modelica.Blocks.Interfaces.RealOutput ME(start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);

  parameter Real V = 1333;

equation
  der(T)  =  1.0;
  der(ME*T) = 24*((if Kla3 < 20 then  + 0.005*V else 0) + (if Kla4 < 20 then  + 0.005*V else 0) + (if Kla5 < 20 then  + 0.005*V else 0));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics
        ={
        Line(
          points={{-78,28},{-42,28}},
          thickness=0.5),
        Line(
          points={{-84,0},{-50,0}},
          thickness=0.5),
        Line(
          points={{-76,-28},{-42,-28}},
          thickness=0.5)}));
end sensor_ME;
