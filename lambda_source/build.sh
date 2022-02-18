#!/bin/bash
# builds all the lambda functions by calling a build.sh script in their repo, the output
# of which should be putting a zip file in the compiled directory
export HERE=`pwd`
find * -type d -depth 0 -exec sh -c 'pushd {};./build.sh' \;
