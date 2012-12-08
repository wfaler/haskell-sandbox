haskell-sandbox
===============

sandbox for exploring haskell. To run first do:

	cabal-dev install SHA && cabal-dev install hslogger && cabal-dev install test-framework && cabal-dev install test-framework-hunit && cabal-dev install test-framework-quickcheck2

This installs all the dependencies in a local sandbox. To run tests run:

     cabal-dev configure --enable-tests
     cabal-dev build
     cabal-dev test

..rinse and repeat. If you have comments on how the code or project structure can be improved, please comment or send pull requests! This is a newbie test project after all.
One unit test fails on purpose to see it actually got invoked.