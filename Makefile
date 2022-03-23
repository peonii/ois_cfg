run: build
	@./main
	@rm -f ./main

build:
	@qcpp main.qcpp main.cpp
	@g++ main.cpp -o main
	@rm -f main.cpp

debug:
	@qcpp main.qcpp main.cpp 1
	@g++ main.cpp -o main
	@rm -f main.cpp
	@./main
	@rm -f ./main

compile:
	@qcpp main.qcpp main.cpp


