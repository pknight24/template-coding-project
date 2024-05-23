#!/bin/bash

timestamp=$(date +%Y-%m-%d_%H-%M-%S)

filename="books/$timestamp.R"

vim "$filename"
