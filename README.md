# `yoga-layout` Library Builder

## What?

A prebuilt version of the ASMjs version of [Yoga Library](https://github.com/facebook/yoga), for the web only.

This does NOT include the NodeJS version (`.node`), which would not be compatible with all runtimes anyway.

It also provides types from `@types/yoga-layout`.

## Why?

Facebook's [Yoga Library](https://github.com/facebook/yoga) is written in C++, with JavaScript bindings, and is not compatible with versions of NodeJS > v10 (Current version is v18!), due to incompatibilities of [nbind](https://github.com/charto/nbind) (which is not maintained) with NodeJS C++ headers in v12 or later.

## Build

```
docker build -t yoga-builder .
docker run -v "$PWD/dist:/dist" yoga-builder
```
