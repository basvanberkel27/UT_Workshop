with Diesel_Engine;
with Ada.Strings.Fixed;

package Car is

   type Car_Type is private;
 
   type Car_Color_T is 
     (CAR_COLOR_BLACK,
      CAR_COLOR_BLUE,
      CAR_COLOR_WHITE,
      CAR_COLOR_RED,
      CAR_COLOR_YELLOW);
   
   procedure Start 
     (C : in out Car_Type);
   
   procedure Stop 
     (C : in out Car_Type);
   
   procedure Set_Car_Color 
     (C   : in out Car_Type;
      Clr :        Car_Color_T);
   
   function Get_Car_Color 
     (C : Car_Type)
      return Car_Color_T;
   
   procedure Set_License_Plate
     (C : in out Car_Type;
      Plate :    String);
   
   function Get_License_Plate
     (C : Car_Type)
      return  String;

private
   type Car_Type is 
      record
         License_Plate : String(1..8) := "XX-nnn-X";
         Car_Color     : Car_Color_T;   
         DieselEngine  : Diesel_Engine.Diesel_Engine_Type;
      end record;
   
end car;
