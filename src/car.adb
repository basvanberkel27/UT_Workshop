
package body Car is

   procedure Start 
     (C : in out Car_Type)
   is
   begin
      Diesel_Engine.Start (C.DieselEngine);
   end Start;
   
   procedure Stop 
     (C : in out Car_Type)
   is
   begin
      Diesel_Engine.Stop(C.DieselEngine);
   end Stop;
   
   function Get_Car_Color 
     (C : Car_Type)
      return Car_Color_T
   is 
   begin
      return C.Car_Color;   
   end Get_Car_Color;
      
   procedure Set_Car_Color
     (C   : in out Car_Type;
      Clr :        Car_Color_T) 
   is      
   begin
      C.Car_Color := Clr;      
   end Set_Car_Color;
   
   function Get_License_Plate     
     (C : Car_Type)
     return string
   is
   begin
      return C.License_Plate;
   end Get_License_Plate;
      
   procedure Set_License_Plate
     (C : in out Car_Type;      
      Plate :    String)
   is
   begin
      C.License_Plate := Plate;
   end Set_License_Plate;     

end Car;
