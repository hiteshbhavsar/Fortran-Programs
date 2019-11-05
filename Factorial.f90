program Factorial
	implicit none
	integer i, n,j,fact
	print *,"Enter the value for n"
	fact=1
	read *,n
	do i=2,n
		fact=fact*i
	end do
	print *, "Factorial of ",n," is : ",fact
end program
