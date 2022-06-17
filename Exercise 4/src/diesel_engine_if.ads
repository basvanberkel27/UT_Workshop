with Engine_Interface;

package Diesel_Engine_If is

   type Diesel_If_Type is new Engine_Interface.Engine_If_Type with private;
   type Diesel_Iwa is access all Diesel_If_Type'Class;

   function Create
      return Engine_Interface.Engine_Iwa;

   overriding
   procedure Start
	(E : access Diesel_If_Type);

   overriding
   procedure Stop
	(E : access Diesel_If_Type);

   overriding
   function Get_Kilometers
	(E : access Diesel_If_Type)
         return Float;

   overriding
   procedure Add_One_Mile
     (E : access Diesel_If_Type);

   function Get_Curent_Oil_Level
     (E : access Diesel_If_Type)
      return Float;

   procedure Change_Oil
     (E : access Diesel_If_Type);


private

   type Diesel_If_Type is new Engine_Interface.Engine_If_Type with
      record
         Current_Oil_Level : Float := 5.0;
         Kilometers : Float;
         Started    : Boolean;
      end record;


end Diesel_Engine_If;
