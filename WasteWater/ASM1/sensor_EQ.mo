within WasteWater.ASM1;
model sensor_EQ "EQ"

  extends WasteWater.Icons.sensor_O2;

 Interfaces.WWFlowAsm1in In annotation (Placement(transformation(extent={{-10, -110},{10,-90}})));

  parameter Real Bss = 2;
  parameter Real Bcod = 1;
  parameter Real Bnkj = 30;
  parameter Real Bno = 10;
  parameter Real Bbod5 = 2;
  parameter Real iXB = 0.08;
  parameter Real iXP = 0.06;
  parameter Real fp = 0.08;
  parameter Real Xxa= 0.09; //Because fuck it

  //Real EQ(start=0);
  //Real T(start=1e-3);
  //Real SNkje;
 // Real SSe;
  //Real BOD;
  //Real COD;

equation
   //SNkje = In.Snh + In.Snd + In.Xnd + iXB*(In.Xbh+Xxa)+iXP*(In.Xp+In.Xi);

   //SSe = 0.75 * (In.Xs+In.Xi+In.Xbh+In.Xba+In.Xp);
  // BOD = 0.25 * (In.Ss +In.Xs + (1-fp)*(In.Xbh+In.Xba));
   //COD = In.Ss + In.Si + In.Xs + In.Xi + In.Xbh + In.Xba + In.Xp;

  //der(T)  =  1.0;
  //der(EQ) =  1/T/1000*(Bss*SSe+Bcod*COD+Bnkj*SNkje+Bno*In.Sno+Bbod5*BOD)*In.Q;
  /*** LIST OF HIDING BOYS *** /
  * > iXB    -  This boy has been brought home
  * > Xxa,e  - Died at sea
  * > iXP    -  This boy has been brought home
  * > fP     -  This boy has been brought home
  * > SNO,e  - This boy has been brought home
  ****************************/
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end sensor_EQ;
