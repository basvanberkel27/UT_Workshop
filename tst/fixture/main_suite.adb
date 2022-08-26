--
--  Copyright (C) 2008, AdaCore
--
with Car.Test.Suite;

package body Main_Suite is

   function Suite return Access_Test_Suite is
      Ret : constant Access_Test_Suite := new Test_Suite;
   begin
      Ret.Add_Test (Car.Test.Suite.Suite);
      return Ret;
   end Suite;

end Main_Suite;
