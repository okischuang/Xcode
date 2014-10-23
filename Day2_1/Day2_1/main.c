//
//  main.c
//  Day2_1
//
//  Created by Okis Chuang on 2014/10/22.
//  Copyright (c) 2014年 KnightO. All rights reserved.
//

#include <stdio.h>


void itoa(int n, char s[]) {
    int i;
    int sign;
    if ((sign = n) < 0) {
        n = -n;
    }
    do {
        s[i++] = n % 10 + '0';
    }while ((n /= 10) > 0);
    if (sign < 0) {
        s[i++] = '-';
    }
    s[i] = '\0';
}

void printd(int n) {
    if (n < 0) {
        putchar('-');
        n = -n;
    }
    if (n > 10) {
        printd(n/10);
    }
    putchar(n%10+'0');
    fflush(stdout);
}

int main(int argc, const char * argv[]) {
    //int x = -543;
    //char s[80];
    //itoa(x, s);
    // insert code here...
    //printf("reverse string=%s\n",s);
    //fflush(stdout);
    int x = 34567;
    printd(x);
    return 0;
}
