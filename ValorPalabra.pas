program ValorPalabra;
uses crt;
var
   palabra: string;
   i, total: integer;
begin
   clrscr;
   repeat
      total := 0;
      writeln('Ingrese una palabra:');
      readln(palabra);

      for i := 1 to length(palabra) do
      begin
         if (palabra[i] in ['A'..'Z']) then
            total := total + ord(palabra[i]) - ord('A') + 1
         else if (palabra[i] in ['a'..'z']) then
            total := total + ord(palabra[i]) - ord('a') + 1;
      end;

      writeln('Valor de la palabra: ', total);
   until total = 100;

   writeln('Programa finalizado (palabra con 100 puntos).');
   readln;
end.

