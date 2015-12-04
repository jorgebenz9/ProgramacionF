! Es programa calcula la función sin(x) en el intervalo [0,2 pi]
prog sinf
implicit none

integer :: i, npts
real :: x, f_x, x01, x02, xm1, xm2, ft1, ft2, ft3
real, parameter :: pi = 4.0 * atan (1.0)

npts = 100
dx = 2.0 * pi /float (npts)
write(*.*) 'dx= ', dx
   write(*.*) 'i ','
x = 0.0
do i = 1, npts, 1
   x = dx * float(i)
   f_x = sin (x)
   write(*,*) i, x, f_x
enddo
