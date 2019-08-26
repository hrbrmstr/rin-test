# Test of RInside with R 3.6, Xcode 11 & Swift 5 on macOS Catalina

This is a sample Xcode 11 project (a nigh vanilla/default SwiftUI project) which has:

- R 3.6
- [RInside](http://dirk.eddelbuettel.com/code/rinside.html)
- [Rcpp](http://www.rcpp.org/)

all setup including sample bridging code to enable function execution and data exchange between Swift 5 and R.

A few key things are included/set:

- Search paths:
    - `/Library/Frameworks/R.framework/Headers/`
    - `/Library/Frameworks/R.framework/Versions/3.6/Resources/library/RInside/include/`
    -  `/Library/Frameworks/R.framework/Versions/3.6/Resources/library/Rcpp/include/`
- Frameworks, Libraries and Embedded Content:
    - `/Library/Frameworks/R.framework/Versions/3.6/Resources/lib/libR.dylib`
    - `/Library/Frameworks/R.framework/Versions/3.6/Resources/library/RInside/lib/libRInside.dylib`
    - Hardened Runtime is enabled with an entitlement of "Disable Library Validation" because the RInside and R shared libraries aren't codesigned  (see `rin-swift/rin_test.entitlements`)
- one `.mm` file which lets Xcode know we're using Objective-C++. This is where you include things like `R.h`, `Rcpp.h`, and `RInside.h` or other C/C++ libraries
- one ^^ corresponding `.hpp` file that has *no* imports or includes of anything R/Rcpp-ish and defines the functions you're going to expose to Swift
- one bridging header (setup as as an "Objective C Bridging Header" under "Swift Compiler" in the General settings. This should just include ^^
- R (RInside) is initialized in the `AppDelegate.swift` and an example of calling functions with and without parameters is in `ContentView.swift`

There are quite a number of post-compilation yellow flags due to the R-ish headers but it builds and runs fine.

Built on the shoulders of:

- Brian Hall's old-ish (2015) [example](http://www.brianrhall.net/rss/linkingxcodecandrtocreateplots) of getting R to play nice with Xcode
- Ben Gorman's more recent (March, 2019) [example](https://www.gormanalysis.com/blog/using-rcpp-in-xcode/) of getting R 3.5 & RInside to play nice with Xcode
- Patrick Wardle's [example](https://github.com/objective-see/ProcInfo/) of getting C-ish things to work with Objective C)
