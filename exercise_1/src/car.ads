with Ada.Strings.Fixed;
with Diesel_Engines; use Diesel_Engines;

package Car is
   Car_Not_Started_Exception : exception;
   
   type Car_Type is tagged private;
 
   type Car_Color_T is 
     (CAR_COLOR_BLACK,
      CAR_COLOR_BLUE,
      CAR_COLOR_WHITE,
      CAR_COLOR_RED,
      CAR_COLOR_YELLOW);

   procedure Start (Self : in out Car_Type);
   procedure Stop (Self : in out Car_Type);
   function Is_Running (Self : Car_Type) return Boolean;
   
   procedure Drive_For (Self : in out Car_Type; Seconds : Positive);

   function Get_Colour (Self : Car_Type) return Car_Color_T;
   procedure Set_Car_Color (Self : in out Car_Type; Color : Car_Color_T);
   
   function Get_License_Plate (Self : Car_Type) return String;
   procedure Set_License_Plate (Self : in out Car_Type; Plate : String);

private
   type Car_Type is tagged record
      License_Plate : String(1..8) := "XX-nnn-X";
      Car_Color     : Car_Color_T;   
      Engine        : Diesel_Engine;
      Is_Running    : Boolean := False; 
    end record;
   
end Car;
