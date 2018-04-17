within WasteWater.ASM1;
model Settlergurl
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{-28,46},{-26,50}}, color={217,67,180}),
        Line(
          points={{-36,46},{-36,50}},
          color={217,67,180},
          smooth=Smooth.Bezier),
        Line(points={{-42,44},{-46,48}}, color={217,67,180}),
        Line(points={{20,46},{18,50}}, color={217,67,180}),
        Line(
          points={{26,46},{26,50}},
          color={217,67,180},
          smooth=Smooth.Bezier),
        Line(points={{32,46},{36,50}}, color={217,67,180})}),    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
  extends WasteWater.ASM1.SettlerBoii;

        Real A(start=10.0,fixed=false);
        Real T(start=1000.0,fixed=false);
        Real v(start=1000.0,fixed=false);
        Real rhop = 1200.0;
        Real rhof = 1000.0;
        Real d = 0.0005;
        Real mu = 0.001;
        Real h = 4.0;
        Real g = 9.81;

equation
  T = (A*h)/Feed.Q*60*60*24;
  v = (g*(rhop - rhof)*d^2)/(18*mu);
  T = h/v;


end Settlergurl;
