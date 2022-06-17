--
--  Copyright (C) 2008, AdaCore
--
with AUnit.Assertions; use AUnit.Assertions;
with Engine_Interface.mock;

package body car.test is

   procedure Car_Start_EngineIsInvoked (T : in out Test) is      
      pragma Unreferenced (T);
      C : Car.Car_Type;
      E : Engine_Interface.Engine_Iwa;
   begin
      -- arrange
      E:= engine_interface.mock.Create;           
      Car.Create (C, E);
      
      -- act
      Car.Start (C);
      
      -- assert
      -- Check that the engine_interface.mock.Start has been called once.
      
   end Car_Start_EngineIsInvoked;


end car.test;
