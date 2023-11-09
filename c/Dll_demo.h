#pragma once

typedef struct S_DEMO_IN
{
    double n;
    double *arr;
} DemoIn;

typedef struct S_DEMO_RESULT
{
    double mean;
    double std;
} DemoRes;

#ifdef __cplusplus
extern "C"
{
#endif
    void demo_mean_std(DemoRes *pRes, double *arr, DemoIn *pIn);
#ifdef __cplusplus
}
#endif
