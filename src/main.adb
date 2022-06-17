with Car;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   C : Car.Car_Type;
begin
   Car.Set_License_Plate(C, "K-544-SR");
   Car.Set_Car_Color(C, Car.CAR_COLOR_BLACK);
   Car.Start (C);
   Car.Stop (C);

end Main;
