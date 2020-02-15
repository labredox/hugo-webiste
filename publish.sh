#!/bin/sh
cd ../labredox.github.io
git reset --hard 
git clean -fd
cd ../labredox.source
hugo -v --cleanDestinationDir --destination ../labredox.github.io