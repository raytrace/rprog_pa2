### Introduction

This is a solution to the second programming assignment dealing with
caches. There are two functions aimed to cache solutions to matrix inversion:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then the
    `cachesolve` should retrieve the inverse from the cache.

We assume that the matrix is always invertible.

The solution contains two files:

1.  cachematrix.R : contains functions for creating, computing, and caching
    the inversion of a matrix.
2.  test.R : test code for the functions in cachematrix.R
