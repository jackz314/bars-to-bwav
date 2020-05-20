all: compile

compile:
	g++ ./bars-to-bwav.cpp -lboost_filesystem -g -o ./bars-to-bwav

clean:
	rm -f ./bars-to-bwav