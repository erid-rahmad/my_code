#!/bin/python3

import math
import os
import random
import re
import sys



def compareTriplets(a, b):
    ccc=0
    cc=0
    for i in range(3):
        
        if a[i]>b[i]: 
            cc=cc+1
        if a[i]<b[i]:
            ccc=ccc+1

    return cc,ccc

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = compareTriplets(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
