#!/bin/bash

function setUp {
	theCommand='src/scan.sh';
}

function testEquals {
	assertEquals 2 2
	assertEquals "a" "a"
}

function testGreaterThan {
	assertGreaterThan 1 2
	assertGreaterThan 1 5
}
