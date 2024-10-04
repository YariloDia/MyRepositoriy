begin
  var elem := ReadInteger('Введите год:');
  Assert(elem > 0);
  var year := (elem mod 4 = 0) and (elem mod 100 <> 0) or (elem mod 400 = 0);
  PrintLn($'Год високосный: {year}');
  
  var (day1, month1, day2, month2) := ReadInteger4('Введите две даты:');
  if month1 > month2 then PrintLn(1)
  else if month1 < month2 then PrintLn(2)
  else if day1 > day2 then PrintLn(1)
  else if day1 < day2 then PrintLn(2)
  else PrintLn('Даты одинаковые');
  
  if year then PrintLn('В этом году 366 дней')
  else PrintLn('В этом году 365 дней');
  
  var (year1, year2) := ReadInteger2('Введите два года:');
  Assert((year1 > 0) and (year2 > 0));
  Assert(year1 <= year2);
  var sum := 0;
  for var i := year1 to year2 do
  begin
    flag := False;
    if ((i mod 4 = 0) and (i mod 100 <> 0)) or (i mod 400 = 0) then flag := True;
    if flag = True then sum += 366
    else sum += 365;
  end;
  Print(sum);
  
  var hours := ReadInteger('Введите кол-во часов: ');
  Print(hours * 3600);
end.