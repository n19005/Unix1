#!/bin/bash
ls -lR ~ | awk 'print{ $9, $5}' | sort -k 2 -nr | head -n 5
