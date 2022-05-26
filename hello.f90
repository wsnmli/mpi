PROGRAM helloworld
USE MPI
IMPLICIT NONE
INTEGER :: rank, size, ierr

CALL MPI_Init(ierr)
CALL MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierr)
CALL MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierr)

PRINT*, "Hello, World from", rank, "out of", size
CALL MPI_FINALIZE(ierr)
END PROGRAM helloworld