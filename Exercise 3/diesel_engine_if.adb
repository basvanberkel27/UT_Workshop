
package body Diesel_Engine_If is

   function Create
     return Engine_Interface.Engine_Iwa
   is
      E : Diesel_Iwa := new Diesel_If_Type;
   begin
      return Engine_Interface.Engine_Iwa (E);
   end Create;

   overriding
   procedure Start
     (E : access Diesel_If_Type)
   is
   begin
      E.Started := True;
   end Start;

   overriding
   procedure Stop
      (E : access Diesel_If_Type)
   is
   begin
      E.Started := False;
   end Stop;

   overriding
   function Get_Kilometers
	(E : access Diesel_If_Type)
         return Float
   is
   begin
      return E.Kilometers;
   end Get_Kilometers;

   overriding
   procedure Add_One_Mile
     (E : access Diesel_If_Type)
   is
   begin
      E.Kilometers := E.Kilometers + (1.0/1.60934);
   end Add_One_Mile;

   procedure Change_Oil
     (E : access Diesel_If_Type)
   is
   begin
      E.Current_Oil_Level := 5.0;
   end;

   function Get_Curent_Oil_Level
     (E : access Diesel_If_Type)
      return Float
   is
   begin
      return E.Current_Oil_Level;
   end Get_Curent_Oil_Level;

end Diesel_Engine_If;
