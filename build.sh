#!/bin/bash
cd thunks
make fel-to-spl-thunk.h
cd ..
make binfiles
sudo make install
sudo chown -R aodzip:aodzip *
