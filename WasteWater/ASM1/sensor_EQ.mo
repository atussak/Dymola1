within WasteWater.ASM1;
model sensor_EQ "EQ"

  extends WasteWater.Icons.sensor_O2;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-10,
            -80},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-10,
            -60},{10,-90}})));

  Real EQ(start=0);
  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(EQ) =  1/T/1000*(2);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_EQ;
