#include <time.h>
#include <stdio.h>

int main() {
    char bufDay[32];
    struct tm *ts1;
    size_t last1;
    time_t nowDy = time(NULL);
    ts1   = localtime(&nowDy);
    last1 = strftime(bufDay, 32, "%A", ts1);
    bufDay[last1] = '\0';

    char bufMon[32];
    struct tm *ts2;
    size_t last2;
    time_t nowMn = time(NULL);
    ts2   = localtime(&nowMn);
    last2 = strftime(bufMon, 32, "%B", ts2);
    bufMon[last2] = '\0';


    printf("%s\n", bufDay);
    printf("%s\n", bufMon);
    
    return 0;
}