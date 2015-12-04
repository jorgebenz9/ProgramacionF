!
!! Area.f90
!! 
!! Made by (Jorge Benz Olguin Aguilar)
!! Login   <jbolguin@ltsp37.example.com>
!! 
!! Started on  Tue Nov 17 11:37:25 2015 Jorge Benz Olguin Aguilar
!! Last update Time-stamp: <2015-nov-18.miércoles 11:54:22 (jbolguin)>
!


program Area2  
  implicit none

  interface
     function Area_Circle (r)
       real :: Area_Circle
       real, intent(IN) :: r
     end function Area_Circle

     function Area_Sphere (r)
       real :: Area_sphere
       real, intent (IN) :: r
     end function Area_Sphere
  end interface

  real :: radius, radius0, r0, dr, computed_Area
  integer :: i, icase
  character(10) :: shape

  write(*,*) "Que caso quiere resolver? (case 1: Circle, case 2: Spher&
       &e"
  read(*,*) icase

  !definimos la figura geometrica a utilizar

  if (icase .eq. 1) then
     shape = "Circle"
  else if (icase.eq.2) then
     shape = "Sphere"
  end if
  
write (*, '(A)', ADVANCE = "NO") "Introduce el radio del circulo o esf&
     &era: "
read (*,*) radius0
!abrimos el archivo para guardar la información
open (unit=5, file='datos.dat', status='unknown')

write(*,*) "i, radius, computed_Area"
!computar las areas para diferentes radios (10 valores)
r0 = radius0
dr = 0.1
do i = 1, 11
   radius = r0 + float(i-1)*dr

   
