
package body Diesel_Engines is

   procedure Start (E : in out Diesel_Engine)
   is
   begin
      E.Started := True;
   end Start;

   procedure Stop (E : in out Diesel_Engine)
   is
   begin
      E.Started := False;
   end Stop;

   function Get_Kilometers (E : Diesel_Engine)
         return Float
   is
   begin
      return E.Kilometers;
   end Get_Kilometers;

   procedure Add_One_Mile (E : in out Diesel_Engine)
   is
   begin
      E.Kilometers := E.Kilometers + (1.0/1.60934);
   end Add_One_Mile;

   procedure Change_Oil (E : in out Diesel_Engine)
   is
   begin
      E.Current_Oil_Level := 5.0;
   end;

   function Get_Curent_Oil_Level (E : Diesel_Engine)
      return Float
   is
   begin
      return E.Current_Oil_Level;
   end Get_Curent_Oil_Level;

end Diesel_Engines;
