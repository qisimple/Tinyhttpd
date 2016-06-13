all: httpd client
# LIBS = -lpthread #-lsocket
LIBS = -lpthread
httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd
	rm client
