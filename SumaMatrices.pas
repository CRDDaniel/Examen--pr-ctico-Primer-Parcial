program SumaMatrices;
uses crt;
const n = 3;
var
  A, B, C: array[1..n,1..n] of integer;
  i, j: integer;
begin
  clrscr;

  writeln('Ingrese la primera matriz (3x3):');
  for i := 1 to n do
    for j := 1 to n do
      read(A[i,j]);  { usa read para poder escribir filas como: 1 2 3 }
  readln; { limpia el fin de línea }

  writeln('Ingrese la segunda matriz (3x3):');
  for i := 1 to n do
    for j := 1 to n do
      read(B[i,j]);
  readln;

  for i := 1 to n do
    for j := 1 to n do
      C[i,j] := A[i,j] + B[i,j];

  writeln('Resultado A + B:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(C[i,j]:6);
    writeln;
  end;

  readln;
end.
