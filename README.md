FakeInput library
=================

FakeInput is user input simulation library. It provides API to programaticaly
generate input events from input devices such as keyboard and mouse. 
Also you can use it to execute any external programs.

It is written in C++ and ported to Unix-like and Windows platforms.

Author
------

Richard Jedlička (uiii.dev@gmail.com)

Requirements
------------

To succesfully build this library you need this:

- [CMake](http://www.cmake.org/) build system

Unix-like platform only:

- [pkg-config](http://www.freedesktop.org/wiki/Software/pkg-config)
- [Xlib](http://en.wikipedia.org/wiki/Xlib) library
- XTest extension of Xlib

If you want to build also test applications, you need this:

- [Qt 4](http://qt.nokia.com/) framework

If you want to generate API documentation, you need this:

- [Doxygen](http://www.stack.nl/~dimitri/doxygen/) documentation system

Build & Installation
--------------------

1. First you have to download the source code:

    - using [Git](http://git-scm.com):

        `git clone https://uiii@github.com/uiii/FakeInput.git`

    - or download the archive

        [.tar.gz](https://github.com/uiii/FakeInput/tarball/master)

        [.zip](https://github.com/uiii/FakeInput/zipball/master)

2. Build the library:

    on Unix open your console, on Windows open Visual Studio command prompt

    - prepare the build:

        go to FakeInput's root and make build directory:

            cd FakeInput && mkdir build && cd build

        now generate files needed to build:

            cmake ../

        * `cmake ../` command has some options and properties you can set.

            if you want to build test application:
                
                set `-DTEST_APP=ON`

            if you want to generate API documentation:
                
                set `-DDOC=ON`

            to specify installation location:
                
                set `-DINSTALL_PREFIX=path/where/to/install`
            
    - compile & install:

        - on Unix-like platform run:

                make
                make install

        - on Windows:

            it depends on the generator you set to CMake (see [this][generator]),
            by default it is Visual Studio project file:

                msbuild FakeInput.sln /p:Configuration=Release
                msbuild INSTALL.vcxproj /p:Configuration=Release

            or you can do it in Visual Studio (open FakeInput.sln project file)

[generator]: http://www.cmake.org/cmake/help/cmake-2-8-docs.html#opt:-Ggenerator-name
