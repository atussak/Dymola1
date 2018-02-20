within WasteWater.ASM1;
model sensor_PE "PE"

  extends WasteWater.Icons.sensor_O2;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));

  Real PE(start=0);
  Real T(start=1e-3);

equation
  der(T)  = 1.0;
  der(PE) = 1/T*(0.004*18610.0823 + 0.008*18446 + 0.05*385);

end sensor_PE;
