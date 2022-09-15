with Ada.Strings.Fixed;
with Diesel_Engines; use Diesel_Engines;

package Cars is

   type Car is tagged private;
 
   type Car_Color_T is 
     (CAR_COLOR_BLACK,
      CAR_COLOR_BLUE,
      CAR_COLOR_WHITE,
      CAR_COLOR_RED,
      CAR_COLOR_YELLOW);

   procedure Start (Self : in out Car);
   procedure Stop (Self : in out Car);
   function Is_Running (Self : Car) return Boolean;
   
   function Get_Colour (Self : Car) return Car_Color_T;
   procedure Set_Car_Color (Self : in out Car; Color : Car_Color_T);
   
   function Get_License_Plate (Self : Car) return String;
   procedure Set_License_Plate (Self : in out Car; Plate : String);

private
   type Car is tagged record
      License_Plate : String(1..8) := "XX-nnn-X";
      Car_Color     : Car_Color_T;   
      Engine        : Diesel_Engine;
      Is_Running    : Boolean := False; 
    end record;
   
end Cars;
