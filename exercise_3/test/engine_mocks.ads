with Engines; use Engines;

package Engine_Mocks is
   type Engine_Mock is new Engine with null record;

   overriding procedure Start (E : in out Engine_Mock);
   overriding procedure Stop (E : in out Engine_Mock);

   overriding procedure Add_One_Mile (E : in out Engine_Mock);
   overriding procedure Change_Oil (E : in out Engine_Mock);

   overriding function Get_Kilometers (E : Engine_Mock) return Float;
   overriding function Get_Curent_Oil_Level (E : Engine_Mock) return Float;
end Engine_Mocks;