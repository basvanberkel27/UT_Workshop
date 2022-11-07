package Equality_Assertions is

procedure Assert_Equals (Expected, Actual : Float; Message : String := "");
procedure Assert_Equals (Expected, Actual : Integer; Message : String := "");
procedure Assert_Equals (Expected, Actual : String; Message : String := "");

end Equality_Assertions;