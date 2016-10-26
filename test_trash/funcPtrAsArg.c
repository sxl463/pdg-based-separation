#include <math.h>
#include <stdio.h>

double compute_sum(double (*funcp)(double), double lo, double hi){
    double  sum = 0.0;

    for (int i = 0;  i <= 100;  i++){
        double  x, y;
        x = i / 100.0 * (hi - lo) + lo;
        y = (*funcp)(x);
        sum += y;
    }
    return sum / 100.0;
}

int main(void){
    double  (*fp)(double);      
    double  sum;
    fp = sin;
    sum = compute_sum(fp, 0.0, 1.0);
    printf("sum(sin): %f\n", sum);

    fp = cos;
    sum = compute_sum(fp, 0.0, 1.0);
    printf("sum(cos): %f\n", sum);
    return 0;
}
