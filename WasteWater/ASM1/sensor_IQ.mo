within WasteWater.ASM1;
model sensor_IQ "IQ"

  extends WasteWater.Icons.sensor_O2;

 Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10, -110},{10,-90}})));

  Modelica.Blocks.Interfaces.RealInput Q annotation (Placement(transformation(extent={{54,40},
            {74,60}})));

  parameter Real Bss = 2;
  parameter Real Bcod = 1;
  parameter Real Bnkj = 30;
  parameter Real Bno = 10;
  parameter Real Bbod5 = 2;
  parameter Real iXB = 0.08;
  parameter Real iXP = 0.06;
  parameter Real fp = 0.08;

 Real IQ(start=0);
 Real T(start=1e-3);
 Real SNkje;
 Real SSe;
 Real BOD;
 Real COD;

equation
  In.Q = 0;
  SNkje = In.Snh + In.Snd + In.Xnd + iXB*(In.Xbh+In.Xba)+iXP*(In.Xp+In.Xi);
  SSe = 0.75 * (In.Xs+In.Xi+In.Xbh+In.Xba+In.Xp);
  BOD = 0.65 * (In.Ss +In.Xs + (1-fp)*(In.Xbh+In.Xba));
  COD = In.Ss + In.Si + In.Xs + In.Xi + In.Xbh + In.Xba + In.Xp;

   der(T)  =  1.0;
   der(IQ*T) =  1/1000*(Bss*SSe+Bcod*COD+Bnkj*SNkje+Bno*In.Sno+Bbod5*BOD)*Q;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_IQ;
