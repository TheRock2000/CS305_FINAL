CC= gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) get_student_id.o main.o -o main

main.o: main.c
	$(CC) -c -g main.c

get_student_id.o: get_student_id.c
	$(CC) -c -g get_student_id.c


