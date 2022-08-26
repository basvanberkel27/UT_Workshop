--
--  Copyright (C) 2008, AdaCore
--
with AUnit.Test_Caller;

package body car.test.suite is

   package Caller is new AUnit.Test_Caller (Car.Test.Test);

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test
        (Caller.Create ("Car_Start_EngineIsInvoked", Car_Start_EngineIsInvoked'Access));
      return Ret;
   end Suite;

end car.test.suite;
