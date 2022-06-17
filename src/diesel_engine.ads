with Engine;

package Diesel_Engine is

   type Diesel_Engine_Type is new Engine.Engine_Type with private;

   function Get_Curent_Oil_Level 
     (DE : Diesel_Engine_Type)
      return Float;
   
   procedure Change_Oil 
     (DE : in out Diesel_Engine_Type);      

   overriding
   procedure Start
     (DE : in out Diesel_Engine_Type);   
        
private

   type Diesel_Engine_Type is new Engine.Engine_Type with
      record
         Current_Oil_Level : Float := 5.0;
         Fuel_Type : Engine.Fuel_Type_T := Engine.DIESEL;
      end record;
   
end Diesel_Engine;
