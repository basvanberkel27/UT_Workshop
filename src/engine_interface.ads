
package Engine_Interface is

   type Engine_If_Type is limited interface;
   type Engine_Iwa is access all Engine_If_Type'Class;

   procedure Start
	(E : access Engine_If_Type) is abstract;

   procedure Stop
	(E : access Engine_If_Type) is abstract;

   function Get_Kilometers
	(E : access Engine_If_Type)
         return Float is abstract;

   procedure Add_One_Mile
	(E : access Engine_If_Type) is abstract;

end Engine_Interface;
