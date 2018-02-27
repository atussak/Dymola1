within WasteWater.ASM1;
model sensor_PE "PE"

  extends WasteWater.Icons.sensor_PE;
  Modelica.Blocks.Interfaces.RealInput Qa annotation (Placement(transformation(extent={{12,-96},
            {32,-76}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-86})));
  Modelica.Blocks.Interfaces.RealInput Qr annotation (Placement(transformation(extent={{-46,-96},
            {-26,-76}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-28,-86})));
  Modelica.Blocks.Interfaces.RealInput Qw annotation (Placement(transformation(extent={{-12,-96},
            {8,-76}}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={28,-86})));
  Modelica.Blocks.Interfaces.RealOutput PE(start=0) annotation (Placement(
        transformation(extent={{88,-10},{108,10}})));

  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(PE*T) =  1/(0.004*Qa+0.008*Qr+0.05*Qw);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics
        ={
        Line(
          points={{-28,-42},{-28,-82}},
          thickness=0.5),
        Line(
          points={{28,-42},{28,-82}},
          thickness=0.5)}));
end sensor_PE;
