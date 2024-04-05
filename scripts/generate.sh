#!/bin/bash
set -e # Exit immediately if any command exits with a non-zero status.

mkdir -p ./tmp

# Remove the existing temporary SDK generation folder
rm -rf ./tmp/nextlove-sdk-generator-output

# Generate SDK files
nextlove-sdk-generator generate ruby ./tmp/nextlove-sdk-generator-output

# Move only the 'lib' folder
rm -rf ./lib
mv ./tmp/nextlove-sdk-generator-output/lib ./lib

# Clean up the temporary SDK generation folder
rm -rf ./tmp/nextlove-sdk-generator-output
