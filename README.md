# LoopBack on JVM

## Background

LoopBack - an open-source mobile backend framework for Node.js

> A component in StrongLoop Suite.
> A library of Node.js modules for connecting mobile apps to a variety of data sources.
> A command line tool, slc lb, for generating models and entire applications with the LoopBack library.
> A set of SDKs for native and web-based mobile clients.

Avatar.js - Server-side JavaScript for the JVM

> Avatar.js is a project to bring the node programming model, APIs and module
> ecosystem to the Java platform, enabling a new class of hybrid server applications
> that can leverage two of the most popular programming languages and ecosystems
> today. These Java+JavaScript applications can leverage capabilities of both
> environments - access the latest node frameworks while taking advantage of the
> Java platform's scalability, manageability, tools, and extensive collection of
> Java libraries and middleware.


## Set up

1. Download and install JDK 8 Build b108

https://jdk8.java.net/download.html

2. Check out avatar-js source code and related build tools


    ./checkout.sh

3. Build avatar-js


    ./build.sh

## Run samples

    nodej hello

## Run LoopBack sample app

    cd sls-sample-app
    npm install
    nodej app

## References

1. https://blogs.oracle.com/theaquarium/entry/project_avatar_is_open_source
2. https://avatar-javascript.java.net/
3. http://docs.strongloop.com/loopback
4. https://github.com/strongloop/sls-sample-app


