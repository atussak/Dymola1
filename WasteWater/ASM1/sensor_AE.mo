within WasteWater.ASM1;
model sensor_AE "AE"

  extends WasteWater.Icons.sensor_O2;
  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(extent={{-10,
            -110},{10,-90}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(extent={{-10,-80},
            {-2,-88}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(extent={{-10,
            -60},{10,0}})));

  Real AE(start=0);
  Real T(start=1e-3);
equation
  der(T)  =  1.0;
  der(AE) =  2/T/1.8/1000*1333*(Kla3+Kla4+Kla5);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_AE;
