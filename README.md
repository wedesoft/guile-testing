# Testing with Guile and SRFI-64

This is an example on how to do unit-testing using [GNU Guile](http://www.gnu.org/software/guile/), Automake [Test Anything Protocol (TAP)](https://testanything.org/), and [SRFI-64](http://srfi.schemers.org/srfi-64/srfi-64.html).

You can setup and run the example like this:
```
./bootstrap
./configure
make check
```

![SRFI-64 test driver for Automake TAP](testing.png)

## External links

* [SRFI-64](http://srfi.schemers.org/srfi-64/srfi-64.html)
* [cuirass build automation server](https://notabug.org/mthl/cuirass) (see [build-aux/test-driver.scm](https://notabug.org/mthl/cuirass/src/master/build-aux/test-driver.scm))
