
package body Diesel_Engines is

   overriding procedure Start (E : in out Diesel_Engine)
   is
   begin
      E.Started := True;
   end Start;

   overriding procedure Stop (E : in out Diesel_Engine)
   is
   begin
      E.Started := False;
   end Stop;

   overriding function Get_Kilometers (E : Diesel_Engine)
         return Float
   is
   begin
      return E.Kilometers;
   end Get_Kilometers;

   overriding procedure Add_One_Mile (E : in out Diesel_Engine)
   is
   begin
      E.Kilometers := E.Kilometers + (1.0/1.60934);
   end Add_One_Mile;

   overriding procedure Change_Oil (E : in out Diesel_Engine)
   is
   begin
      E.Current_Oil_Level := 5.0;
   end;

   overriding function Get_Curent_Oil_Level (E : Diesel_Engine)
      return Float
   is
   begin
      return E.Current_Oil_Level;
   end Get_Curent_Oil_Level;

end Diesel_Engines;
