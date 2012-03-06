#!/bin/bash
# Dylan Knowles, January 2012.

##############################################################################
# OVERVIEW
##############################################################################

# A script to test TXL grammars.
# Takes all files that match a specified pattern in the current directory
# and tests them against the given TXL script.
# Test output by TXL is put into an appropriate file and is formatted in 
# such a way as to facilitate easy reading.

##############################################################################
# ARGUMENTS
##############################################################################

# The folder where tests are kept.
testFolder=$1

# The file extension of the files you want to use as test input.
# e.g., ".c"
fileExtension=$2

# The TXL program to test the test files against.
program=$3

##############################################################################
# CONSTANTS
##############################################################################

TEST_PASSED=0
TEST_FAILED=1
FORMAT_RED=$(tput setaf 1)
FORMAT_RESET=$(tput sgr0)
FORMAT_BOLD=$(tput bold)

# Output file where the test output will go.
TEST_OUTPUT="test-output.txt"

##############################################################################
# FUNCTIONS
##############################################################################

# Tests a file using TXL.
# Arguments:
#	$1	File
#		The file to be tested using the specified TXL program.
# Returns:
#	TEST_PASSED, if the test passes, TEST_FAILED otherwise.
function test() {
	file=$1

	# Run TXL.
	txl ${file} ${program} &>> ${TEST_OUTPUT}

	# Return the appropriate value when the input passes / fails.
	result=`echo $?`
	if [[ "${result}" == "0" ]]; then
		return ${TEST_PASSED}
	else
		return ${TEST_FAILED}
	fi
}

##############################################################################
# SCRIPT
##############################################################################

# Get all of our test files. 
files=`ls -1 ${testFolder}/*${fileExtension}`

# Get ready to take statistics.
numTests=0
numPassed=0

# Set up the test output file.
APPEND=-a
echo "------------------------------------------------------------" 	> ${TEST_OUTPUT} # Yes, that single > is correct.
echo "  TEST OUTPUT" 							>> ${TEST_OUTPUT}
echo "------------------------------------------------------------" 	>> ${TEST_OUTPUT}
echo " Below are the results of your tests. You'll see the output" 	>> ${TEST_OUTPUT}
echo "of the TXL command and then result of the test (either " 		>> ${TEST_OUTPUT} 
echo "SUCCESS or FAILURE)." 						>> ${TEST_OUTPUT}
echo ""									>> ${TEST_OUTPUT}
echo "Running tests on files that match *${fileExtension}"		| tee ${APPEND} ${TEST_OUTPUT}
echo "------------------------------------------------------------" 	>> ${TEST_OUTPUT}
echo ""								 	>> ${TEST_OUTPUT}

# For each test file, do a test.
for file in ${files}; do
	
	# Perform the test.
	test ${file}
	result=$?

	# Print an appropriate value and update statistics.
	statusMessage="${FORMAT_RED}FAILURE${FORMAT_RESET}"
	let numTests+=1
	if [ "${result}" == "${TEST_PASSED}" ]; then
		statusMessage="SUCCESS"
		let numPassed+=1
	fi
	echo "[${statusMessage}]:	${file}" | tee ${APPEND} ${TEST_OUTPUT}

	# Separate tests in the file by a space and a line for easy reading.
	echo "" 								>> ${TEST_OUTPUT}
	echo "------------------------------------------------------------" 	>> ${TEST_OUTPUT}
	echo "" 								>> ${TEST_OUTPUT}
done

# Print statistics.
echo "Tests Passed:	${FORMAT_BOLD}${numPassed}/${numTests}${FORMAT_RESET}" | tee ${APPEND} ${TEST_OUTPUT}
