all: compile

compile:
	g++ ./bars-to-bwav.cpp --std=c++17 -g -o ./bars-to-bwav

compile-boost:
	g++ ./bars-to-bwav-boost.cpp -lboost_filesystem -g -o ./bars-to-bwav

boost:
	sudo apt-get install libboost-all-dev

test-cpp:
	g++ ./test-cpp-version.cpp --std=c++17 -g -o ./test-cpp-version

clean:
	rm -f ./bars-to-bwav