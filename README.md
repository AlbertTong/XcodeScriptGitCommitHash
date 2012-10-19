Xcode Script Git Commit Hash
=================

Handy script to obtain the first 7 characters of the GIT commit SHA (hash) as a string to be displayed or referenced in code

###Instructions:
### Add this file to your project bundle or target.
### Go to Project settings > target > Build Phases > Run Script. 
### Add Shell /bin/sh and a value with the bundle path to this script
### Add "GITHash" as a key to your app's info plist to compile.
### Reference the property list with the "GITHash" key to obtain the git hash value.

## Creator

[Albert Tong](http://about.me/AlbertTong) ([@alberttong](https://twitter.com/alberttong))

## License

Xcode Script Git Commit Hash is available under the MIT license. See the LICENSE file for more info.