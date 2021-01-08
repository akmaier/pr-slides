#!/bin/bash
./quadratic_features.pl 200 6 > quadratic_features1.data
./quadratic_features.pl 50 0 > quadratic_features2.data
gnuplot quadratic_features1.gp
./square.pl < quadratic_features1.data > quadratic_features3.data
./square.pl < quadratic_features2.data > quadratic_features4.data
