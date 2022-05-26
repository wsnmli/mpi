program messagepassing
    use mpi
    implicit none
    INTEGER :: comsize, rank, ierr
    INTEGER :: sendto, recvfrom
    INTEGER :: ourtag = 42
    character(5) :: sendmessage
    character(5) :: recvmessage
    integer, dimension(MPI_STATUS_SIZE) :: RSTATUS
    
    CALL MPI_Init(ierr)
    call MPI_Comm_size(MPI_COMM_WORLD, comsize, ierr)
    call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

    if (rank .eq. 0) then
        sendmessage='hello'
        sendto = 1;
        call MPI_Ssend(sendmessage, 5, MPI_CHAR, sendto, ourtag, MPI_COMM_WORLD, ierr)
    else if (rank .eq. 1) then
        recvfrom = 0;
        call MPI_Recv(recvmessage, 5, MPI_CHAR, recvfrom, ourtag, MPI_COMM_WORLD, rstatus, ierr)
        print*, "recived ", recvmessage
    end if
    CALL MPI_FINALIZE(ierr)
end program messagepassing