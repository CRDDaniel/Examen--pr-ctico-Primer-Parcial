       program contar_vocales_consonantes
       implicit none
       character(len=100) :: cadena
       integer :: i, longitud, vocales, consonantes
       character :: c

       vocales = 0
       consonantes = 0

      print *, "Ingrese una cadena:"
      read(*,'(A)') cadena

       longitud = len_trim(cadena)

       do i = 1, longitud
          c = cadena(i:i)
          if (c >= 'A' .and. c <= 'Z') c = achar(iachar(c)+32)
          if (c >= 'a' .and. c <= 'z') then
             select case (c)
             case ('a','e','i','o','u')
                  vocales = vocales + 1
            case default
                consonantes = consonantes + 1
            end select
          end if
        end do

        print *, "Vocales: ", vocales
        print *, "Consonantes: ", consonantes
        
        PRINT *
        PRINT *, 'Presione ENTER para salir...'
        READ(*,*)
            
      end program contar_vocales_consonantes


