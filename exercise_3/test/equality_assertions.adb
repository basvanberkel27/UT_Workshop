with AUnit.Assertions;     use AUnit.Assertions;

package body Equality_Assertions is

procedure Assert_Equals (Expected, Actual : Float; Message : String := "") is
begin
    Assert (Expected = Actual , "Expected " & Expected'Image & ", but actual value is " & Actual'Image & ". " & Message);
end Assert_Equals;


procedure Assert_Equals (Expected, Actual : Integer; Message : String := "") is
begin
        Assert (Expected = Actual , "Expected " & Expected'Image & ", but actual value is " & Actual'Image & ". " & Message);
end Assert_Equals;

procedure Assert_Equals (Expected, Actual : String; Message : String := "") is
begin
    Assert (Expected = Actual , "Expected " & Expected & ", but actual value is " & Actual & ". " & Message);
end Assert_Equals;

end Equality_Assertions;