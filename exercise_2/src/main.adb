with Ada.Text_IO; use Ada.Text_IO;

with Car; use Car;
with Diesel_Engines; use Diesel_Engines;

procedure Main is
   function To_String (Colour : Car_Color_T) return String is
   begin
      case Colour is
         when CAR_COLOR_BLACK => return "black";
         when CAR_COLOR_BLUE => return "blue";
         when CAR_COLOR_RED => return "red";
         when CAR_COLOR_WHITE => return "white";
         when CAR_COLOR_YELLOW => return "yellow";
         when others => return "unknown";
      end case;
   end To_String;

   Current_Engine : aliased Diesel_Engine;
   Car : Car_Type;
begin
   Car.Set_Car_Color (CAR_COLOR_BLACK);
   Car.Set_License_Plate ("IT-EC-07");

   Put_Line ("A car was created!");
   Put_Line (
      "It's a nice " & To_String (Car.Get_Colour) 
      & " car with license plate: " & Car.Get_License_Plate); 
   Car.Start;
   Put_Line ("The car is started and ready to drive.");
   return;
end;
