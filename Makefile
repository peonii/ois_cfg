run: build
	@./main
	@rm -f ./main

build:
	@qcpp main.qcpp main.cpp
	@g++ -O3 -static main.cpp -o main -std=c++17
	@rm -f main.cpp

debug:
	@qcpp main.qcpp main.cpp 1
	@g++ -O3 -static main.cpp -o main -std=c++17
	@rm -f main.cpp
	@./main
	@rm -f ./main

compile:
	@qcpp main.qcpp main.cpp


