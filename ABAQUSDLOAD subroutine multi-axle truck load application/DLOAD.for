           SUBROUTINE DLOAD(F,KSTEP,KINC,TIME,NOEL,NPT,LAYER,KSPT,
     1 COORDS,JLTYP,SNAME)
C
      INCLUDE 'ABA_PARAM.INC'
C
      DIMENSION TIME(2), COORDS (3)
      CHARACTER*80 SNAME
      
      X=COORDS(1)
      Y=COORDS(2)
      Z=COORDS(3)
      
      Velocity=10.0
      X_position=Velocity*TIME(2)
      
      if(Y>=0.425.and.Y<=0.625)then
          if(X>=X_position-0.3.and.X<=X_position)then
              F=20000000
          elseif(X>=X_position-3.6.and.X<=X_position-3.0)then
              F=7263820
          elseif(X>=X_position-5.0.and.X<=X_position-4.4)then
              F=7263820
          elseif(X>=X_position-12.0.and.X<=X_position-11.4)then
              F=6883790
          elseif(X>=X_position-13.4.and.X<=X_position-12.8)then
              F=6883790
          elseif(X>=X_position-24.3.and.X<=X_position-24.3)then
              F=20000000
          elseif(X>=X_position-27.6.and.X<=X_position-27.0)then
              F=7263820
          elseif(X>=X_position-29.0.and.X<=X_position-29.4)then
              F=7263820
          elseif(X>=X_position-36.0.and.X<=X_position-25.4)then
              F=6883790
          elseif(X>=X_position-37.4.and.X<=X_position-36.8)then
              F=6883790
          else
              F=0
          end if
      elseif(Y>=2.225.and.Y<=2.425)then
          if(X>=X_position-0.3.and.X<=X_position)then
              F=20000000
          elseif(X>=X_position-3.6.and.X<=X_position-3.0)then
              F=7263820
          elseif(X>=X_position-5.0.and.X<=X_position-4.4)then
              F=7263820
          elseif(X>=X_position-12.0.and.X<=X_position-11.4)then
              F=6883790
          elseif(X>=X_position-13.4.and.X<=X_position-12.8)then
              F=6883790
          elseif(X>=X_position-24.3.and.X<=X_position-24.3)then
              F=20000000
          elseif(X>=X_position-27.6.and.X<=X_position-27.0)then
              F=7263820
          elseif(X>=X_position-29.0.and.X<=X_position-29.4)then
              F=7263820
          elseif(X>=X_position-36.0.and.X<=X_position-25.4)then
              F=6883790
          elseif(X>=X_position-37.4.and.X<=X_position-36.8)then
              F=6883790
          else
              F=0
          end if
      else
          F=0
      end if

      
      RETURN
      END