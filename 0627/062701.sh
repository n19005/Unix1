#!/bin/bash
mkdir dir1
mkdir dir1/dir2
mkdir dir1/dir2/dir3
touch ../dir2./file{01..05}
touch ../../dir3./file{06..10}
echo tree dir1
rm -r dir1


