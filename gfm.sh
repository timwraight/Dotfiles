#!/bin/bash
git status | awk "/$1/ { print \$3 }"
