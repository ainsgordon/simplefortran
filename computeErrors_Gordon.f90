
! Program description: Program on cancellation errors

program computeErrors
	real(8) :: s1, s2, num3, diff
	integer :: counter, num1, num2
	
	write(*,*) 'Enter n to compute summation of the series: '
	read(*,*) num1
	num2 = num1
	s1= 0
	!Loop that does backwards computation from 1/n to 1/1, the num2 increments and s1 holds backwards sum
	do counter= 1, num1
		if(num2 == 0) then
			exit
		else
			num3 = 1.0/real(num2)
			num2 = num2-1
			s1 = s1 + num3
		end if
	end do
	write(*,*) 'The sum of backward computation: ', s1
	
	s2= 0
	num2 = 1
	!Loop that does forwards computation from 1/1 to 1/1, the num2 increments and s2 holds backwards sum
	do counter= 1, num1
		num3 = 1.0/real(num2)
		s2 = s2 + num3
		num2 = num2+1
	end do
	write(*,*) 'The sum of forward computation: ', s2
	
	!Calculates the difference between forwards and backwards sum
	diff = s1-s2
	write(*,*) 'The difference is ', diff



end