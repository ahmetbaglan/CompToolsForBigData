#!/bin/bash
cat employees.txt | awk  '{ if( $4 == "Technology") $5 = 1.2*$5; else $5 = 1.1 * $5;  print}' > employeesOut.txt
