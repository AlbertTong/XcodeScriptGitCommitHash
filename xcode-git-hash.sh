# Copyright (c) 2012 Albert Tong <ahtong@gmail.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is furnished
# to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
#
# This script retrieves the first 7 characters of the commit SHA (hash).
# Instructions:
# Add this file to your project bundle or target.
# Go to Project settings > target > Build Phases > Run Script. 
# Add Shell /bin/sh and a value with the bundle path to this script
# Add "GITHash" as a key to your app's info plist to compile.
# Reference the property list with the "GITHash" key to obtain the git hash value.

INFOPLISTPATH="${TARGET_BUILD_DIR}/${EXECUTABLE_NAME}.app/Info.plist"

# Location of PlistBuddy
PLISTBUDDY="/usr/libexec/PlistBuddy"

# Get the current git commmit hash (first 7 characters of the SHA)
GITREVSHA=$(git --git-dir="${PROJECT_DIR}/.git" --work-tree="${PROJECT_DIR}" rev-parse --short HEAD)

echo "GIT SHA = ${GITREVSHA}"
echo "INFOPLISTPATH = ${INFOPLISTPATH}"

# Set the Git hash in the info plist for reference
$PLISTBUDDY -c "Set :GITHash $GITREVSHA" "${INFOPLISTPATH}"