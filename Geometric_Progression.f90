program goemetric_progression
	implicit none
	integer::a,r,i,n
	print *, "Enter the value of initial term a and factor, r: "
	read *, a,r
	print *, "Enter the number of terms"
	read * ,n
	do i=0,n
		print*, "The value ",i," of the series is:",a*(r**i)
		
	end do
end program goemetric_progression
