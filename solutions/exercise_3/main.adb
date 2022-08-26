with Car;
with Engine_Interface;
with Diesel_Engine_If;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   C : Car.Car_Type;
   E : Engine_Interface.Engine_Iwa;
begin
   E := Diesel_Engine_If.Create;
   Car.Create (C, E);

   Car.Set_License_Plate(C, "K-544-SR");
   Car.Set_Car_Color(C, Car.CAR_COLOR_BLACK);
   Car.Start (C);
   Car.Stop (C);
end Main;
