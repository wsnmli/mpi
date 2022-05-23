PROGRAM helloworld
USE MPI
IMPLICIT NONE
INTEGER :: rank, comsize, ierr

CALL MPI_Init(ierr)

CALL MPI_FINALIZE(ierr)
END PROGRAM helloworld