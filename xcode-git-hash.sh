# Created by Albert Tong on 4/11/12.
#
# This script retrieves the first 7 characters of the commit SHA (hash).
# You will need to add "GITHash" as a key to your app's info plist to compile.

INFOPLISTPATH="${TARGET_BUILD_DIR}/${EXECUTABLE_NAME}.app/Info.plist"

# Location of PlistBuddy
PLISTBUDDY="/usr/libexec/PlistBuddy"

# Get the current git commmit hash (first 7 characters of the SHA)
GITREVSHA=$(git --git-dir="${PROJECT_DIR}/.git" --work-tree="${PROJECT_DIR}" rev-parse --short HEAD)

echo "GIT SHA = ${GITREVSHA}"
echo "INFOPLISTPATH = ${INFOPLISTPATH}"

# Set the Git hash in the info plist for reference
$PLISTBUDDY -c "Set :GITHash $GITREVSHA" "${INFOPLISTPATH}"