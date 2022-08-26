--
--  Copyright (C) 2008, AdaCore
--
with AUnit.Test_Fixtures;

package car.test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   Procedure Car_Start_EngineIsInvoked (T : in out Test);

end car.test;
