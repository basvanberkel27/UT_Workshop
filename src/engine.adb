with Ada.Text_IO; use Ada.Text_IO;
package body Engine is

   procedure Start 
     (E : in out Engine_Type)
   is
   begin
      E.Started := True;
      Put_Line("Engine started");
   end Start;   
   
   procedure Stop      
     (E : in out Engine_Type)
   is
   begin
      E.Started := False;
      Put_Line("Engine stopped");
   end Stop;  
   
   procedure Add_One_Mile       
     (E : in out Engine_Type)
   is
   begin
      E.Kilometers := E.Kilometers + (1.0/1.60934);
   end Add_One_Mile;
   
   function Get_Kilometers          
     (E : Engine_Type) return Float
   is
   begin
      return E.Kilometers;     
   end Get_Kilometers;
   
      
     

end Engine;
