#! /bin/bash
for D in */ ; do
    docker build -t nekroze/${D%?} $D
done

