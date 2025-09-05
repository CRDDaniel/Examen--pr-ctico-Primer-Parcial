        program valor_palabra
        implicit none
        character(len=100) :: palabra
        integer :: i, total, longitud

        do
          print *, "Ingrese una palabra:"
          read(*,'(A)') palabra
          total = 0
          longitud = len_trim(palabra)

            do i = 1, longitud
            if (palabra(i:i) >= 'A' .and. palabra(i:i) <= 'Z') then
                total = total + iachar(palabra(i:i)) - iachar('A') + 1
            else if (palabra(i:i) >= 'a' .and. palabra(i:i) <= 'z') then
                total = total + iachar(palabra(i:i)) - iachar('a') + 1
            end if
            end do

          print *, "Valor de la palabra:", total

          if (total == 100) exit
          end do

          print *, "Programa finalizado (palabra con 100 puntos)."
          PRINT *
          PRINT *, 'Presione ENTER para salir...'
          READ(*,*)
          
          end program valor_palabra

