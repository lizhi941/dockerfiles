#! /bin/bash
for D in */ ; do
    echo docker build -t nekroze/${D%?} $D
done

