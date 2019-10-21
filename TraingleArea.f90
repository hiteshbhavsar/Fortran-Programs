program TraingleArea
	implicit none
	real :: a,b,c,s,Area
	a=3
	b=4
	c=5
	s=(a+b+c)/2
	print *,"The perimeter of traingle is : ",s
	Area=(s*(s-a)*(s-b)*(s-c))**0.5
	print *,"The Area of traingle is : ",Area
end program TraingleArea
