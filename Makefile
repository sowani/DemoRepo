default: demo

demo.o: demo.c
	gcc -c demo.c -o demo.o

demo: demo.o
	gcc demo.o -o demo

clean:
	rm -f demo.o demo
