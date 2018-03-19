# Change this to your file with main in it.
BASE_NAME = many_functions

# Where to find user code.
USER_DIR = .

# Flags passed to the preprocessor.
CPPFLAGS =

# Flags passed to the C++ compiler.
CXXFLAGS = -g -Wall -Wextra -std=c++11

PRIMARY_FILE = $(BASE_NAME).cpp

TEST_FILE = $(BASE_NAME)_test.cpp

TEST_OBJECTS = $(BASE_NAME).o $(BASE_NAME)_test.o

# House-keeping build targets.

all : $(BASE_NAME)_test

test: $(BASE_NAME)_test.cpp

clean :
	rm -rf *.o *.dSYM *~ $(BASE_NAME)_test

# Unit tests
$(BASE_NAME)_test: $(TEST_OBJECTS)
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $(BASE_NAME)_test $(TEST_OBJECTS)

