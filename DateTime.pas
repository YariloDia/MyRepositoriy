begin
  var elem := ReadInteger('Введите год:');
  Assert(elem > 0);
  PrintLn($'Год високосный: {(elem mod 4 = 0) and (elem mod 100 <> 0) or (elem mod 400 = 0)}');
  
  var (day1, month1, day2, month2) := ReadInteger4('Введите две даты:');
  if month1 > month2 then Print(1)
  else if month1 < month2 then Print(2)
  else if day1 > day2 then Print(1)
  else if day1 < day2 then Print(2)
  else Print('Даты одинаковые')
end.