PROGRAM quiz
 IMPLICIT NONE
 INTEGER :: i                        ! this is the loop counter for the 10 students since i will be using a do loop
 CHARACTER(LEN=1) :: Grade           !a variable with the name Grade, declared as a character to store a single letter
 CHARACTER(LEN=11) :: Remarks        !a variable with the name Remarks, declared as a character to store a maximum of 11 letters(i chose a length of 11 because, the  longest word among the remark words has 11 letters        
 INTEGER,DIMENSION(10) :: Score      !this is an array with the name 'score' to hold 10 student's scores
 INTEGER,DIMENSION(10,10)::yy
 Score = (/85,62,45,91,38,74,55,88,61,47/)      !here, i assigned the student's scores to the array
 yy(1) = 1
 yy(2) = 2
 yy(3) = 3
 yy(4) = 4
 yy(5) = 5
 yy(6) = 6
 yy(7) = 7
 yy(8) = 8
 yy(9) = 9
 yy(10) = 10
 print*,"STUDENT     SCORE     GRADE     REMARKS"     !this will be printed as my table header 
do i = 1,10               !this will loop through all 10 students scores
 if(Score(i) >=80) then          !this is to check if the score is greater than or equal to 80
   Grade = "A"                   !the student will get an 'A' for the Grade slot
   Remarks = "Distinction"       !the student will get 'Distinction' for the Remarks slot
else if(Score(i) >= 60) then     !this checks if the score is greater than or equal to 60
   Grade = "B"                   !the student will get a 'B' for the Grade slot
   Remarks = "Credit"            !the student will get 'Credit' for the Remarks slot
else if(Score(i) >= 40) then     !this is to check if the score is greater than or equal to 40
   Grade = "C"                   !the student will get a 'C' for the Grade slot
   Remarks = "Pass"              !the student will get 'Pass' for the Remarks slot
else                             !this checks if the score is any score apart from the ones described above
   Grade = "F"                   !the student will get a 'F' for the Grade slot
   Remarks = "Fail"              !the student will get 'Fail' for the Remarks slot
endif
print'(I3,9X,I3,7X,A1,9X,A11)', i, Score(i), Grade, Remarks     !this prints each student's formatted row
 PRINT*,yy
end do                            !this will end the loop for all the 10 students
 END PROGRAM quiz
 
