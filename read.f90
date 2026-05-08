Program Rain
  IMPLICIT NONE
  REAL, DIMENSION(13880)::rr
  INTEGER, DIMENSION(13880)::Yr
  INTEGER, DIMENSION(13880)::Mn
  INTEGER,DIMENSION(13880)::Dy
  INTEGER:: i

  OPEN(10,file='Kumasi_1980_2017_dRR.txt',status='old',action='read')
  
  DO i=1,13880
     READ(10,*) Yr(i), Mn(i),Dy(i),rr(i)
     PRINT*, Yr(i), Mn(i), Dy(i),rr(i)
  END DO
 End Program Rain
