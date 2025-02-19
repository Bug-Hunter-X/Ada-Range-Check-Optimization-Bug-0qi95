```ada
function Check_Range(Value : Integer) return Boolean is
begin
   return Value >= 10 and Value <= 20; --More concise and less prone to optimization issues
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(25); 
   if Result then
      Put_Line("Value is in range");
   else
      Put_Line("Value is out of range");
   end if;
end Example;

--Alternative, more robust approach using case statement
function Check_Range_Case(Value : Integer) return Boolean is
begin
  case Value is
    when 10..20 => return True;
    when others => return False;
  end case;
end Check_Range_Case;
```