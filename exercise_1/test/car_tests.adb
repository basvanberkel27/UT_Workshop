--
--  Copyright (C) 2008, AdaCore
--

with AUnit.Assertions;     use AUnit.Assertions;
with AUnit.Test_Fixtures;
with AUnit.Test_Suites;     use AUnit.Test_Suites;
with AUnit.Test_Caller;

with Car; use Car;

package body Car_Tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;

   procedure WhenStopped_ThenCarShouldNotBeRunning (Unused : in out Test) is
      C : Car_Type;
   begin
      -- arrange
      
      -- act
      C.Stop;
      
      -- assert
      Assert (C.Is_Running = False, "Car is running, while it should not be.");     
   end WhenStopped_ThenCarShouldNotBeRunning;

   procedure YourTest (Unused : in out Test) is
      C : Car.Car_Type;
   begin
      null;
      -- write your own test here
   end YourTest;

   -- bonus points if you can find the bug in Get_Colour

   package Caller is new AUnit.Test_Caller (Test);

   function Create_Suite return Access_Test_Suite is
      Suite : Access_Test_Suite := new Test_Suite;
   begin
      Suite.Add_Test (Caller.Create ("When the car is stopped then the car should not be running", 
      WhenStopped_ThenCarShouldNotBeRunning'Access));
      Suite.Add_Test (Caller.Create ("YourTest", YourTest'Access));
      return Suite;
   end Create_Suite;

end Car_Tests;
