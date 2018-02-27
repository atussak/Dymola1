within WasteWater.ASM1;
model sensor_AE "AE"

  extends WasteWater.Icons.sensor_AE;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-10,-10},
            {10,10}},
        rotation=90,
        origin={-28,-88})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-10,10},
            {10,-10}},
        rotation=90,
        origin={0,-88})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-10,10},
            {10,-10}},
        rotation=90,
        origin={28,-88})));
  Modelica.Blocks.Interfaces.RealOutput AE(start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(AE*T) =  2/1.8/1000*1333*(Kla3+Kla4+Kla5);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={
        Line(
          points={{28,-42},{28,-88}},
          thickness=0.5),
        Line(
          points={{-28,-42},{-28,-88}},
          thickness=0.5)}), Icon(graphics={
        Line(
          points={{-28,-42},{-28,-82}},
          thickness=0.5),
        Line(
          points={{28,-42},{28,-82}},
          thickness=0.5)}));
end sensor_AE;
