#! /bin/bash
for D in */ ; do
    docker build --force-rm=true -t nekroze/${D%?} $D
done

