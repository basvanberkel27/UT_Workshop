package Diesel_Engines is

   type Diesel_Engine is tagged private;

   procedure Start (E : in out Diesel_Engine);
   procedure Stop (E : in out Diesel_Engine);



   procedure Add_One_Mile (E : in out Diesel_Engine);
   procedure Change_Oil (E : in out Diesel_Engine);

   function Get_Kilometers (E : Diesel_Engine) return Float;
   function Get_Curent_Oil_Level (E : Diesel_Engine) return Float;

private

   type Diesel_Engine is tagged record
      Current_Oil_Level : Float := 5.0;
      Kilometers : Float;
      Started    : Boolean;
   end record;
end Diesel_Engines;
