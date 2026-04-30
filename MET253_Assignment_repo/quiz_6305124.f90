PROGRAM quiz
 IMPLICIT NONE
 INTEGER :: i
 CHARACTER(LEN=1) :: Grade
 CHARACTER(LEN=11) :: Remarks
 INTEGER,DIMENSION(10) :: Score
 Score = (/85,62,45,91,38,74,55,88,61,47/)
 print*,"STDUENT     SCORE     GRADE     REMARKS"
do i = 1,10
  if(Score(i) >=80) then
     Grade = "A"
     Remarks = "Distinction"
  else if(Score(i) >= 60) then
     Grade = "B"
     Remarks ="Credit"
  else if(Score(i) >= 40) then
     Grade = "C"
     Remarks = "Pass"
  else
     Grade = "F"
     Remarks = "Fail"
  end if
  print("I3,9X,I3,7X,A1,9X,A11"), i, Score(i), Grade, Remarks
 end do
 END PROGRAM quiz
 !ADOMAKO MORDECAI ANANE
 !6305124
