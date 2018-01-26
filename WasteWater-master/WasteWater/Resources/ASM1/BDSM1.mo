within ;
model fggyjfg "jfjk"
  WasteWater.ASM1.deni
            tank1(V=3000) annotation (Placement(transformation(extent={{-60,10},
            {-40,30}})));
  WasteWater.ASM1.nitri
             tank2(V=1333) annotation (Placement(transformation(extent={{-28,10},
            {-8,30}})));
  WasteWater.ASM1.nitri
             tank3(V=1333) annotation (Placement(transformation(extent={{20,10},
            {40,30}})));
  WasteWater.ASM1.nitri
             tank4(V=1333) annotation (Placement(transformation(extent={{-4,10},
            {16,30}})));
  WasteWater.ASM1.SecClar.Krebs.SecClarModKrebs Settler(hsc=10)
                                                        annotation (Placement(
        transformation(extent={{100,12},{120,32}})));
  WasteWater.ASM1.WWSource
                WWSource annotation (Placement(transformation(extent={{-160,40},
            {-140,60}})));
  WasteWater.ASM1.SludgeSink
                  WasteSludge annotation (Placement(transformation(extent={{154,-60},
            {174,-40}})));
  WasteWater.ASM1.pump
            WastePump(Q_max=193) annotation (Placement(transformation(extent={{120,-64},
            {140,-44}})));
  WasteWater.ASM1.deni
            tank5(V=3000) annotation (Placement(transformation(extent={{-90,10},
            {-70,30}})));
  Modelica.Blocks.Sources.Constant Temperature(k=15)
    annotation (Placement(transformation(extent={{-108,58},{-96,70}})));
  WasteWater.ASM1.EffluentSink
                    Effluent annotation (Placement(transformation(extent={{150,10},
            {170,30}})));
  WasteWater.ASM1.divider2
                divider annotation (Placement(transformation(extent={{60,10},{
            80,30}})));
  WasteWater.ASM1.blower
              blower1(Q_max=34574.2654508612) annotation (Placement(
        transformation(extent={{-4,-40},{16,-20}})));
  WasteWater.ASM1.blower
              blower2(Q_max=34574.2654508612) annotation (Placement(
        transformation(extent={{20,-40},{40,-20}})));
  WasteWater.ASM1.blower
              blower3(Q_max=34574.2654508612) annotation (Placement(
        transformation(extent={{-28,-40},{-8,-20}})));
  WasteWater.ASM1.mixer3
              mixer1
                    annotation (Placement(transformation(extent={{-128,12},{
            -108,32}})));
  WasteWater.ASM1.pump
            RecyclePump1(
                        Q_max=46115) annotation (Placement(transformation(
        origin={30,-60},
        extent={{-10,-10},{10,10}},
        rotation=180)));
  WasteWater.ASM1.pump
            RecyclePump2(
                        Q_max=46115) annotation (Placement(transformation(
        origin={90,-78},
        extent={{-10,-10},{10,10}},
        rotation=180)));
  WasteWater.ASM1.sensor_O2
                 sensor_O2 annotation (Placement(transformation(extent={{35,37},
            {55,57}})));
  Modelica.Blocks.Math.Feedback Feedback annotation (Placement(transformation(
          extent={{124,70},{144,90}})));
  Modelica.Blocks.Continuous.PI PI2(T=0.001, k=500, initType=Modelica.Blocks.Types.Init.InitialState)
    annotation (Placement(transformation(extent={{150,70},{170,90}})));
  Modelica.Blocks.Sources.Step OxygenSetpoint(height=1.5)
    annotation (Placement(transformation(extent={{99,70},{119,90}})));
  Modelica.Blocks.Math.Feedback Feedback1
                                         annotation (Placement(transformation(
          extent={{-100,-24},{-80,-4}})));
  Modelica.Blocks.Continuous.PI PI1(T=0.001, k=500, initType=Modelica.Blocks.Types.Init.InitialState)
    annotation (Placement(transformation(extent={{-58,-54},{-38,-34}})));
  Modelica.Blocks.Sources.Step NitrogenSetpoint1(height=1.5)
    annotation (Placement(transformation(extent={{-127,-46},{-107,-26}})));
  WasteWater.ASM1.sensor_NO sensor_NO3 annotation (Placement(transformation(
          extent={{-53,37},{-37,53}})));
equation
  connect(tank2.Out, tank4.In) annotation (Line(
      points={{-8,20},{-4,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(tank4.Out, tank3.In) annotation (Line(
      points={{16,20},{20,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(blower3.AirOut, tank2.AirIn) annotation (Line(
      points={{-19,-20},{-19,-0.95},{-18,-0.95},{-18,10.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(blower1.AirOut, tank4.AirIn) annotation (Line(
      points={{5,-20},{5,0.1},{6,0.1},{6,10.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(blower2.AirOut, tank3.AirIn) annotation (Line(
      points={{29,-20},{29,10.2},{30,10.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(tank1.Out, tank2.In) annotation (Line(
      points={{-40,20},{-28,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(tank5.Out, tank1.In) annotation (Line(
      points={{-70,20},{-60,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(mixer1.Out, tank5.In) annotation (Line(
      points={{-108,21.6},{-108,20},{-90,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(WWSource.Out, mixer1.In1) annotation (Line(
      points={{-140.2,43},{-140.2,25.5},{-128,25.5}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(tank3.Out, divider.In) annotation (Line(
      points={{40,20},{40,20.3},{60,20.3}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(divider.Out1, Settler.Feed) annotation (Line(
      points={{80,22.6},{99,22.6},{99,23.4},{100,23.4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(Settler.Effluent, Effluent.In) annotation (Line(
      points={{120.2,27.7},{131.5,27.7},{131.5,22},{150,22}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(WastePump.Out, WasteSludge.In) annotation (Line(
      points={{140,-51.2},{140,-50.95},{154,-50.95},{154,-51.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(Settler.Waste, WastePump.In) annotation (Line(
      points={{113,12.4},{113,-57.3},{120,-57.3}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(divider.Out2, RecyclePump1.In) annotation (Line(
      points={{80,18.5},{80,-56.7},{40,-56.7}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(Settler.Return, RecyclePump2.In) annotation (Line(
      points={{107,12.4},{107,10.35},{100,10.35},{100,-74.7}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(RecyclePump2.Out, mixer1.In2) annotation (Line(
      points={{80,-80.8},{-148,-80.8},{-148,21.5},{-128,21.5}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(Feedback.y,PI2. u) annotation (Line(points={{143,80},{148,80}}));
  connect(PI2.y, blower2.u) annotation (Line(points={{171,80},{176,80},{176,-32},
          {176,-33},{39.8,-33}}));
  connect(sensor_O2.So,Feedback. u2)
    annotation (Line(points={{54.8,47},{134,47},{134,72}}));
  connect(OxygenSetpoint.y,Feedback. u1)
    annotation (Line(points={{120,80},{126,80}},
                                               color={0,0,255}));
  connect(Temperature.y, tank5.T) annotation (Line(
      points={{-95.4,64},{-92,64},{-92,24},{-90,24}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(tank1.T, tank5.T) annotation (Line(
      points={{-60,24},{-66,24},{-66,64},{-92,64},{-92,24},{-90,24}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(tank2.T, tank5.T) annotation (Line(
      points={{-28,24},{-36,24},{-36,64},{-92,64},{-92,24},{-90,24}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(tank4.T, tank5.T) annotation (Line(
      points={{-4,24},{-6,24},{-6,64},{-92,64},{-92,24},{-90,24}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(tank3.T, tank5.T) annotation (Line(
      points={{20,24},{16,24},{16,64},{-92,64},{-92,24},{-90,24}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(sensor_O2.In, tank3.MeasurePort) annotation (Line(
      points={{45,37},{45.5,37},{45.5,24.5},{35.5,24.5}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(Feedback1.y, PI1.u)
    annotation (Line(points={{-81,-14},{-66,-14},{-66,-44},{-60,-44}}));
  connect(NitrogenSetpoint1.y, Feedback1.u1) annotation (Line(points={{-106,-36},
          {-106,-14},{-92,-14},{-98,-14}}, color={0,0,255}));
  connect(sensor_NO3.Sno, Feedback1.u2) annotation (Line(
      points={{-37.16,45},{-37.16,-25.5},{-90,-25.5},{-90,-22}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(sensor_NO3.In, tank1.MeasurePort) annotation (Line(
      points={{-45,37},{-45,30.5},{-44.5,30.5},{-44.5,24.5}},
      color={0,0,255},
      smooth=Smooth.None));
  connect(PI1.y, RecyclePump1.u) annotation (Line(
      points={{-37,-44},{52,-44},{52,-62.5},{38.9,-62.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(RecyclePump1.Out, mixer1.In3) annotation (Line(
      points={{20,-62.8},{-138,-62.8},{-138,17.5},{-128,17.5}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (
    uses(WasteWater(version="2.1.0"), Modelica(version="3.2.1")),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-160,-100},{
            180,100}}), graphics),
    Icon(coordinateSystem(extent={{-160,-100},{180,100}})));
end fggyjfg;
