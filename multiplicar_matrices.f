      program multiplicar_matrices
        implicit none
        integer, parameter :: n=3
        integer :: A(n,n), B(n,n), C(n,n)
        integer :: i, j, k

        print *, "Ingrese la primera matriz (3x3):"
        do i=1,n
           do j=1,n
              read *, A(i,j)
           end do
        end do

        print *, "Ingrese la segunda matriz (3x3):"
        do i=1,n
           do j=1,n
            read *, B(i,j)
           end do
        end do

        C = 0
        do i=1,n
          do j=1,n
            do k=1,n
                C(i,j) = C(i,j) + A(i,k)*B(k,j)
            end do
          end do
        end do

        print *, "Resultado de la multiplicación:"
        do i=1,n
           write(*,'(3I6)') (C(i,j), j=1,n)
        end do
        
        PRINT *
        PRINT *, 'Presione ENTER para salir...'
        READ(*,*)
      end program multiplicar_matrices

