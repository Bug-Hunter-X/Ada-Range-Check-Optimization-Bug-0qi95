```ada
function Check_Range(Value : Integer) return Boolean is
begin
   if Value >= 10 and Value <= 20 then
      return True;
   else
      return False;
   end if;
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(25);  --Should be false but might be true due to potential compiler optimization
   if Result then
      Put_Line("Value is in range");
   else
      Put_Line("Value is out of range");
   end if;
end Example;
```