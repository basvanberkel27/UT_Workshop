package body engine_interface.mock is

   
   function Create
     return Engine_Interface.Engine_Iwa
   is
      E : Mock_Iwa := new Mock_If_Type;
   begin
      return Engine_Interface.Engine_Iwa (E);
   end Create;

   overriding
   procedure Start
     (E : access Mock_If_Type)
   is
   begin
      E.Started := True;
   end Start;

   overriding
   procedure Stop
      (E : access Mock_If_Type)
   is
   begin
      E.Started := False;
   end Stop;

   overriding
   function Get_Kilometers
	(E : access Mock_If_Type)
         return Float
   is
   begin
      return E.Kilometers;
   end Get_Kilometers;

   overriding
   procedure Add_One_Mile
     (E : access Mock_If_Type)
   is
   begin
      E.Kilometers := E.Kilometers + (1.0/1.60934);
   end Add_One_Mile;

   procedure Change_Oil
     (E : access Mock_If_Type)
   is
   begin
      E.Current_Oil_Level := 5.0;
   end;

   function Get_Curent_Oil_Level
     (E : access Mock_If_Type)
      return Float
   is
   begin
      return E.Current_Oil_Level;
   end Get_Curent_Oil_Level;
   
   
end engine_interface.mock;
