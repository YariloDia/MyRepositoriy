begin
  var elem := ReadInteger('Введите год:');
  Assert(elem > 0);
  if (a mod 4 = 0) and (a mod 100 <> 0) or (a mod 400 = 0) then 
    Print('True') 
  else Print('False');
end.