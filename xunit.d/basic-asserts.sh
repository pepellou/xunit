#!/bin/bash

function assertEquals {
	if [ "$1" == "$2" ]
	then
		pass
	else
		fail "$current_test: expected '$1' but found '$2'"
	fi
}

function assertNotEquals {
	if [ "$1" == "$2" ]
	then
		fail "$current_test: expected NOT to be '$1' but found '$2'"
	else
		pass
	fi
}

function assertGreaterThan {
	if [ "$1" -gt "$2" ]
	then
		pass
	else
		fail "$current_test: expect '$2' to be greater than '$1'"
	fi
}

function assertMatches {
	if [[ "$2" =~ $1 ]]
	then
		pass
	else
		fail "$current_test: expect '$2' to match regular expression '$1'"
	fi
}

