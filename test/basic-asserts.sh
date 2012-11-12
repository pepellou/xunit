#!/bin/bash

function setUp {
	echo "This is a sample setup"
}

function testEquals {
	assertEquals 2 2
	assertEquals "a" "a"
}

function testGreaterThan {
	assertGreaterThan 3 2
	assertGreaterThan 5 1
}
