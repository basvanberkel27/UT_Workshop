package body Car is

   procedure Start (Self : in out Car_Type) is
   begin
      Self.Engine.Start;
      Self.Is_Running := True;
   end Start;
   
   procedure Stop (Self : in out Car_Type) is
   begin
      Self.Engine.Stop;
      Self.Is_Running := True;
   end Stop;
   
   function Is_Running (Self : Car_Type) return Boolean is
   begin
      return Self.Is_Running;
   end Is_Running;

   procedure Drive_For (Self : in out Car_Type; Seconds : Positive) is
      MilesPerSecond : constant Positive := 31; 
   begin
      if not Self.Is_Running then
         raise Car_Not_Started_Exception;
      end if;

      for I in 0 .. MilesPerSecond*Seconds loop
         Self.Engine.Add_One_Mile;
      end loop;
   end Drive_For;

   function Get_Colour (Self : Car_Type) return Car_Color_T is 
   begin
      return Self.Car_Color;   
   end Get_Colour;
      
   procedure Set_Car_Color (Self : in out Car_Type; Color : Car_Color_T) is      
   begin
      Self.Car_Color := Color;      
   end Set_Car_Color;
   
   function Get_License_Plate (Self : Car_Type) return string is
   begin
      return Self.License_Plate;
   end Get_License_Plate;
      
   procedure Set_License_Plate (Self : in out Car_Type; Plate : String) is
   begin
      Self.License_Plate := Plate;
   end Set_License_Plate;     

end Car;
