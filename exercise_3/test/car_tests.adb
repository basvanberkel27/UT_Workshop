--
--  Copyright (C) 2008, AdaCore
--

with AUnit.Assertions;     use AUnit.Assertions;
with AUnit.Test_Fixtures;
with AUnit.Test_Suites;    use AUnit.Test_Suites;
with AUnit.Test_Caller;

with Car;                  use Car;
with Engine_Mocks;         use Engine_Mocks;
with Equality_Assertions;  use Equality_Assertions;

package body Car_Tests is
   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   Engine : aliased Engine_Mock;
   procedure GivenRunningCar_WhenDrivingForAFewSeconds_ThenSomeDistanceShouldBeTravelled (Unused : in out Test) is
      C : Car_Type := Create (Engine'Access);
      Time_Driving_In_Seconds : constant Positive := 3;
   begin
      -- 
      C.Start;
      
      -- act
      C.Drive_For (Time_Driving_In_Seconds);

      -- assert
      -- replace with a real assert here using the engine mock.
      Assert_Equals (1.0, 2.0);
   end GivenRunningCar_WhenDrivingForAFewSeconds_ThenSomeDistanceShouldBeTravelled;

   package Caller is new AUnit.Test_Caller (Test);

   function Create_Suite return Access_Test_Suite is
      Suite : Access_Test_Suite := new Test_Suite;
   begin
      Suite.Add_Test (Caller.Create ("Given a running car when driving for a few seconds then some distance should be travelled",
         GivenRunningCar_WhenDrivingForAFewSeconds_ThenSomeDistanceShouldBeTravelled'Access));
      return Suite;
   end Create_Suite;

end Car_Tests;
