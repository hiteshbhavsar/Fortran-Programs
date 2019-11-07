program decodestr
  implicit none
  character :: string*30 = "1,10,123,15,654,12"
  integer   :: n, iarray(100)
  n = count(transfer(string, 'a', len(string)) == ",")
  read(string, *) iarray(1:n+1)   ! N+1 because one more int than comma
  print *, 'nvalues=', n+1
  print '(i10)', iarray(1:n+1)
end program
