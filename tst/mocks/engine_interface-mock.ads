package engine_interface.mock is

   type Mock_If_Type is new Engine_Interface.Engine_If_Type with private;
   type Mock_Iwa is access all Mock_If_Type'Class;  
   
   function Create   
     return Engine_Interface.Engine_Iwa;
      
   overriding
   procedure Start
     (E : access Mock_If_Type);
   
   overriding
   procedure Stop
	(E : access Mock_If_Type);

   overriding
   function Get_Kilometers
	(E : access Mock_If_Type)
         return Float;

   overriding
   procedure Add_One_Mile
     (E : access Mock_If_Type);

   function Get_Curent_Oil_Level
     (E : access Mock_If_Type)
      return Float;

   procedure Change_Oil
     (E : access Mock_If_Type);
   
   private

   type Mock_If_Type is new Engine_Interface.Engine_If_Type with
      record
         Current_Oil_Level : Float := 5.0;
         Kilometers : Float;
         Started    : Boolean;
      end record;
   
end engine_interface.mock;
