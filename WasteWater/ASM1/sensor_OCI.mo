within WasteWater.ASM1;
model sensor_OCI "OCI"

  extends WasteWater.Icons.sensor_OCI;
  Modelica.Blocks.Interfaces.RealInput AE annotation (Placement(transformation(extent={{-90,32},
            {-70,52}}), iconTransformation(extent={{-90,32},{-70,52}})));
  Modelica.Blocks.Interfaces.RealInput PE annotation (Placement(transformation(extent={{-90,-32},
            {-70,-52}}), iconTransformation(extent={{-90,-32},{-70,-52}})));
  Modelica.Blocks.Interfaces.RealInput SP annotation (Placement(transformation(extent={{-90,-4},
            {-70,-24}}), iconTransformation(extent={{-90,-4},{-70,-24}})));
  Modelica.Blocks.Interfaces.RealInput ME annotation (Placement(transformation(extent={{-90,24},
            {-70,4}}), iconTransformation(extent={{-90,24},{-70,4}})));

  Real OCI;
equation
  OCI = AE + PE + 5*SP + ME;

   annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics
        ={
        Line(
          points={{0,20},{0,-20}},
          thickness=0.5,
          origin={-68,-14},
          rotation=90),
        Line(
          points={{0,20},{0,-20}},
          thickness=0.5,
          origin={-68,14},
          rotation=90),
        Line(
          points={{0,20},{2.4493e-016,-24}},
          thickness=0.5,
          origin={-52,42},
          rotation=90),
        Line(
          points={{0,20},{2.4493e-016,-24}},
          thickness=0.5,
          origin={-52,-42},
          rotation=90)}));
end sensor_OCI;
