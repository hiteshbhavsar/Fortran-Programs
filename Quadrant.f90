!Program to find the length and angle of the line connecting the given 
!point and the origin in an x-y plane. Also, we will find the Quadrant 
! of the file pint

program Quadrant
	implicit none
	real::x,y,l,a
	real,parameter:: pi= 4 * atan(1.0) !Can only accept a double no 
	!Here we need pi and we can see that atan returns pi/4 (i.e 45 degree)
	! We can also use 2*asin(1) (as sin(90)=1 so it returns pi/2)
	! We can also use 2*acos(0) (as cos(90)=0 so it returns pi/2)
	print *, "Enter the values of x and y coordinates: "
	read *, x,y
	l=sqrt(x**2+y**2)
	print *,"l = ",int(l)
	a=(atan(y/x))*(180/pi) 
	! As atan(y/x) returns value in radians to
	! convert it to degree we multiply it with (180/pi)	
	print * , "a = ",a 
	
end program Quadrant
