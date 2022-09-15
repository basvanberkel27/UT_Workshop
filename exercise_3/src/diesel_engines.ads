with Engines; use Engines;

package Diesel_Engines is

   type Diesel_Engine is new Engine with private;

   overriding procedure Start (E : in out Diesel_Engine);
   overriding procedure Stop (E : in out Diesel_Engine);

   overriding procedure Add_One_Mile (E : in out Diesel_Engine);
   overriding procedure Change_Oil (E : in out Diesel_Engine);

   overriding function Get_Kilometers (E : Diesel_Engine) return Float;
   overriding function Get_Curent_Oil_Level (E : Diesel_Engine) return Float;

private

   type Diesel_Engine is new Engine with record
      Current_Oil_Level : Float := 5.0;
      Kilometers : Float;
      Started    : Boolean;
   end record;
end Diesel_Engines;
