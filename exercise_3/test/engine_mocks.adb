package body Engine_Mocks is
   overriding procedure Start (E : in out Engine_Mock) is
   begin
      return;
   end Start;

   overriding procedure Stop (E : in out Engine_Mock) is
   begin
      return;
   end Stop;

   overriding procedure Add_One_Mile (E : in out Engine_Mock) is
   begin
      return;
   end Add_One_Mile;

   overriding procedure Change_Oil (E : in out Engine_Mock) is
   begin
      return;
   end Change_Oil;

   overriding function Get_Kilometers (E : Engine_Mock) return Float is
   begin
      return -1.0;
   end Get_Kilometers;

   overriding function Get_Curent_Oil_Level (E : Engine_Mock) return Float is
   begin
      return -1.0;
   end Get_Curent_Oil_Level;

end Engine_Mocks;