program ContarVocalesConsonantes;
uses crt;
var
   cadena: string;
   i, vocales, consonantes: integer;
   c: char;
begin
   clrscr;
   vocales := 0;
   consonantes := 0;

   writeln('Ingrese una cadena:');
   readln(cadena);

   for i := 1 to length(cadena) do
   begin
      c := cadena[i];
      if (c >= 'A') and (c <= 'Z') then
         c := chr(ord(c) + 32);

      if (c >= 'a') and (c <= 'z') then
      begin
         if (c in ['a','e','i','o','u']) then
            inc(vocales)
         else
            inc(consonantes);
      end;
   end;

   writeln('Vocales: ', vocales);
   writeln('Consonantes: ', consonantes);
   readln;
end.

