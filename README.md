Xcode Script Git Commit Hash
=================

Handy script to obtain the first 7 characters of the GIT commit SHA (hash) as a string to be displayed or referenced in code

##Instructions:
1. Add this file to your project bundle or target.
2. Go to Project settings > target > Build Phases > Run Script. 
3. Add Shell /bin/sh and a value with the bundle path to this script
4. Add "GITHash" as a key to your app's info plist to compile.
5. Reference the property list with the "GITHash" key to obtain the git hash value.

## Creator

[Albert Tong](http://about.me/AlbertTong) ([@alberttong](https://twitter.com/alberttong))

## License

Xcode Script Git Commit Hash is available under the MIT license. See the LICENSE file for more info.