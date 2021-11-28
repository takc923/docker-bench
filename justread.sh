#!/bin/sh
find "$1" -type f | ruby -ne 'chomp;IO.read($_)'
