program MultiplicarMatrices;
uses crt;
const n = 3;
var
   A, B, C: array[1..n,1..n] of integer;
   i, j, k: integer;
begin
   clrscr;

   writeln('Ingrese la primera matriz (3x3):');
   for i:=1 to n do
      for j:=1 to n do
         readln(A[i,j]);

   writeln('Ingrese la segunda matriz (3x3):');
   for i:=1 to n do
      for j:=1 to n do
         readln(B[i,j]);

   for i:=1 to n do
      for j:=1 to n do
      begin
         C[i,j] := 0;
         for k:=1 to n do
            C[i,j] := C[i,j] + A[i,k] * B[k,j];
      end;

   writeln('Resultado de la multiplicacion:');
   for i:=1 to n do
   begin
      for j:=1 to n do
         write(C[i,j]:6);
      writeln;
   end;

   readln;
end.
