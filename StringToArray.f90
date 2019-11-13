program test
	character(len=47) :: in = '04-DEC-2015,10-DEC-2015,23-DEC-2015,25-DEC-2015'
	character(len=11) :: out(4)
	character(100) :: str 
	integer, dimension(20)::arr
	read(in,*)out
	str= "2 1 1 3 4 4 5 3 2 1 2 4 5 2 1 1 3 4 4 2"
	print *,len(str)
	call ConvertStringtoArray(str,len(trim(str)),arr,20)
	
	!print *, str(1:1)
	

end program test


subroutine ConvertStringtoArray(str,lstr,array,asize) 
	implicit none	
	integer lstr,asize
	integer, dimension(asize):: array
	character(len=lstr) :: str 
	integer   :: n, iarray(100)
	!str= "2 1 1 3 4 4 5 3 2 1 2 4 5 2 1 1 3 4 4 2"
	print *, "Length of str in function ",lstr
	n = count(transfer(str, 'a', len(str)) == " ")
	read(str, *) array(1:n+1)   ! N+1 because one more int than comma
	print *, 'nvalues=', n+1
	print '(i10)', array(1:n+1)

end subroutine ConvertStringtoArray

!This is a test
