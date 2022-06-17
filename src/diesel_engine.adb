with Ada.Text_IO; use Ada.Text_IO;

package body Diesel_Engine is

   overriding
   procedure Start
     (DE : in out  Diesel_Engine_Type)      
   is
   begin
      Put_Line("Engine is starting");
      Put_line("Oil level: " & Float'Image(DE.Current_Oil_Level));
      Engine.Start (Engine.Engine_Type (DE));
   end Start;

   procedure Change_Oil
     (DE : in out Diesel_Engine_Type)     
   is
   begin
      DE.Current_Oil_Level := 5.0;
   end;   
   
   function Get_Curent_Oil_Level 
     (DE : Diesel_Engine_Type)
      return Float
   is
   begin
      return DE.Current_Oil_Level;
   end Get_Curent_Oil_Level;

end Diesel_Engine;
