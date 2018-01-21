all : client_white server_white genQuartiers gen genLiaisons genMap

client_white : client_white.c
	gcc -o client_white -I/usr/include/SDL2 client_white.c -lSDL2main -lSDL2_image -lSDL2 -lSDL2_ttf -lfreetype -lpthread
server_white : server_white.c
	gcc -o server_white server_white.c
genQuartiers : genQuartiers.c
	gcc -o genQuartiers genQuartiers.c
gen : gen.c
	gcc -o gen gen.c
genLiaisons : genLiaisons.c
	gcc -o genLiaisons genLiaisons.c
genMap : genMap.c
	gcc -o genMap genMap.c
clean :
	rm -f client_white server_white genQuartiers gen genLiaisons genMap
