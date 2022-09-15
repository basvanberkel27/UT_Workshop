--  Test framework
with AUnit.Reporter.Text;
with AUnit.Run;

--  Our tests
with Car_Tests;

procedure Test_Main is
   procedure Runner is new AUnit.Run.Test_Runner (Car_Tests.Create_Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Runner (Reporter);
end Test_Main;