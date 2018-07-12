main : db.o
	cc -o main db.o

db.o : db.c
	cc -c db.c

clean :
	rm main db.o *~

.PHONY : main clean
	
