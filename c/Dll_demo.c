#include <math.h>
#include "Dll_demo.h"

void demo_mean_std(DemoRes *pRes, double *arr, DemoIn *pIn)
{
    int N_std;
    pRes->mean = 0.0;
    pRes->std = 0.0;
    N_std = 0;
    for (int i = 0; i < pIn->n; i++)
    {
        N_std = N_std + 1;
        pRes->std = pRes->std + (N_std - 1) * (pIn->arr[i] - pRes->mean) * (pIn->arr[i] - pRes->mean) / N_std;
        pRes->mean = pRes->mean + (pIn->arr[i] - pRes->mean) / N_std;
    }
    if (N_std > 1)
    {
        pRes->std = sqrt(pRes->std / (N_std - 1));
    }
    else
    {
        pRes->std = 0.0;
    }
    for (int i = 0; i < pIn->n; i++)
    {
        if (pIn->arr[i] > pRes->mean + 3.0 * pRes->std)
        {
            arr[i] = pRes->mean + 3.0 * pRes->std;
        }
        else if (pIn->arr[i] < pRes->mean - 3.0 * pRes->std)
        {
            arr[i] = pRes->mean - 3.0 * pRes->std;
        }
        else
        {
            arr[i] = pIn->arr[i];
        }
    }
}

//gcc -fPIC -shared Dll_demo.c -o Dll_demo.dll
