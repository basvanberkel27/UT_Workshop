package Engine is

   type Engine_Type is tagged private;

   type Fuel_Type_T is    
     (DIESEL,
      PETROL,
      GAS);
      
   procedure Start 
     (E : in out Engine_Type);
   
   procedure Stop      
     (E : in out Engine_Type);
   
   procedure Add_One_Mile     
     (E : in out Engine_Type);
   
   function Get_Kilometers     
     (E : Engine_Type) return Float;

private

   type Engine_Type is tagged
      record
         Started : Boolean;
         Kilometers : Float := 0.0;
      end record;
   
end Engine;
