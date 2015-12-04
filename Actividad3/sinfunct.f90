!programa fuente sinfunct

program sinfunct
  implicit none

  !definimos todas las variables
  
  integer :: i,npts ! npts es el numero de puntos en el intervalo
  ! [0,2pi]
  real :: x, f_x,f__x, dx, sintaylor !la variable, una funcióm F(x) y el incremento dx
  real, parameter :: pi = 4.0*atan(1.0) !dejamos que la maquina calcule
  !pi
  real, parameter :: epsilon = 1.0E-6
  
  print *, 'dame el número de puntos en el intervalo npts='
  read(*,*) npts
  dx=(2.0 * pi)/float(npts) !dx es el incremento en el eje x
  write(*,*) 'dx=',dx
  
  x=0.0
  
  open(unit=11, file='seno.dat')
  
  !iniciamos un loop, notemos la sangria dentro del loop
  
  do i=1, npts+1,1
     x=dx*float(i-1)
     f_x=sin(x)
     write(11,*) x,f_x
     if (abs(f_x).le. epsilon) write(*,*)'x=',x,'Cero de la función'
  enddo

  close(11)

  open(unit=11, file='coseno.dat')

  do i=1, npts+1,1
     x=dx*float(i-1)
     f__x=cos(x)
     write(11,*) x, f__x
     if(abs(f__x).le.epsilon)write(*,*)'x=',x,'Es un cero de la deriva&
          &da'
  enddo
  close(11)

  do i=1,1,1
     x=pi/8.0
     sintaylor=x-(x**3.0)/(3.0*2.0)
     write(*,*)'porcentaje de error con respecto a taylor',(1&
          &-(sintaylor/sin(x)))*100, '%'
  enddo
  
     !termina el loop

end program sinfunct
!termina programa



  
