#!/bin/bash

global(){
	var="I am global"
}

local_var(){
	local var="I am local"
	echo $var
}

local_var

echo "Outside local : $var"

global

echo "Outside global func : $var"
