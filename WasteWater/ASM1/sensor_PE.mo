within WasteWater.ASM1;
model sensor_PE "PE"

  extends WasteWater.Icons.sensor_O2;
  Modelica.Blocks.Interfaces.RealInput Qa annotation (Placement(transformation(extent={{12,-96},
            {32,-76}})));
  Modelica.Blocks.Interfaces.RealInput Qr annotation (Placement(transformation(extent={{-46,-96},
            {-26,-76}})));
  Modelica.Blocks.Interfaces.RealInput Qw annotation (Placement(transformation(extent={{-12,-96},
            {8,-76}})));

  Real PE(start=0);
  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(PE) =  1/T*(0.004*Qa+0.008*Qr+0.05*Qw);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_PE;
