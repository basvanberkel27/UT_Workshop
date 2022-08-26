--  Copyright (C) 2008, AdaCore
--
with AUnit.Reporter.Text;
with AUnit.Run;
with Main_Suite; use Main_Suite;

procedure testfixture_car is
   procedure Runner is new AUnit.Run.Test_Runner (Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Runner (Reporter);
end testfixture_car;
