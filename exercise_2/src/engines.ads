package Engines is
   type Engine is interface;
   type Any_Engine is access all Engine'Class;

   procedure Start (E : in out Engine) is abstract;
   procedure Stop (E : in out Engine) is abstract;

   procedure Add_One_Mile (E : in out Engine) is abstract;
   procedure Change_Oil (E : in out Engine) is abstract;

   function Get_Kilometers (E : Engine) return Float is abstract;
   function Get_Curent_Oil_Level (E : Engine) return Float is abstract;
end Engines;