
```cpp
int main(int argc,char *argv) //inicjalizacja mpi argc i argv to argumenty dawane w main 
MPI_Init(&argc, &argv);  
MPI_Finalize();
//kończonko chyba musi byc
//blok tworzenia zmiennych rank to nr wątku size to ilosć wątków 
cpp int rank, size;
MPI_Comm_rank(MPI_COMM_WORLD, &rank);
MPI_Comm_size(MPI_COMM_WORLD, &size);


```
typy danych 
![[Pasted image 20231119235655.png]] 
wysyłanie i odbieranie komunikatów 
```cpp
MPI_Send(&a, 1, MPI_INT, 1, 102, MPI_COMM_WORLD);
MPI_Recv(&b, 1, MPI_INT, 0, 102, MPI_COMM_WORLD,MPI_STATUS_IGNORE);
```
dla wysyłania mamy kolejno (co,ile,typ_danych,id_docelowe,tag(to chyba jest identyfikator wiadomości), mpi_com_world)
dla odbioru mamy kolejno(co, ile, typ_danych, id_nadawcy, tag(to chyba jest identyfikator wiadomości), mpi_com_world)

broadcast aka do wszystkich
![[Pasted image 20231120000642.png]]
```cpp
MPI_Bcast(napis, 3, MPI_CHAR, 0, MPI_COMM_WORLD);
```
(co{tablice bez &},ile,typ_danych,nr_nadawcy/root,mpi_comm_world)

scatter aka dzielimy między procesy 
![[Pasted image 20231120000827.png]]
```cpp
MPI_Scatter(source, 2, MPI_INT,dest, 2, MPI_INT,0, MPI_COMM_WORLD);
```
(co{tablice bez &}, ile, typ_danych, dane_odebrane, ile_danych odbiera, typ_danych, nr_nadawcy/root, comm)
gather aka odwrotne scatter 
![[Pasted image 20231120001438.png]]
```cpp
MPI_Gather(&source, 1, MPI_INT,dest, 1, MPI_INT,3, MPI_COMM_WORLD);
```
(co, ile, typ_danych, dane_odebrane, ile_odbiera,typ_odbieranych,nr_zbieracza,comm)

allgather 
![[Pasted image 20231120002349.png]]
```cpp
int MPI_Allgather(
void * sendbuf, int sendcount, MPI_Datatype sendtype,
void * recvbuf, int recvcount, MPI_Datatype recvtype,
MPI_Comm comm)
```
nieużywane więc w sumie huj wi ale (co, ile, typ_danych, dane_odebrane, ile_danych_odbiera,comm) nie ma root bo wszystkie to efektywnie root

reduce 
![[Pasted image 20231120002545.png]]
![[Pasted image 20231120002549.png]]
```cpp
MPI_Reduce(&source, &sum, 1, MPI_INT,MPI_SUM, 2, MPI_COMM_WORLD);
```
zbiera dane z wielu wątków poddaje je operacji i wsadza 
(daneprzed, danepo, ile_wysłano, typ_danych, operacja, root,comm)
dane zostają wzięte z daneprzed root to wątek w kturym dane skończą w zmiennej danepo a 


allreduce 
![[Pasted image 20231120003019.png]]
też nie było więc troche huj wie ale po prostu nie dajemu roota i powinno dizałać
```cpp
 MPI_Allreduce(void * sendbuf, void * recbuf, int count, MPI_Datatype type, int op, MPI_Comm comm)
```
(daneprzed, danepo, ile_wysłano, typ_danych, operacja, comm)