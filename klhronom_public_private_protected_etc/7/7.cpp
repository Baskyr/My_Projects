// 7.cpp : This file contains the 'main' function. Program execution begins and ends there.
//
include <iostream>
#include "myTemplate_bubblesort.h"

using namespace std;
using namespace std;

class foititis
{
    string onoma;
    int am;
    double b;
public:
    foititis(string onomax, int amx, double bx)
    {
        onoma = onomax;
        am = amx;
        b = bx;
    }
    foititis()
    {
    }
    friend ostream& operator<<(ostream& tout, foititis& f);
    bool operator < (foititis t)
    {
        if (b < t.b)
            return true;
        else
            return false;
    }
};
int main()
{
    int n;

    double a[] = { 10, 3, 6,27, 305, 32 };
    n = sizeof(a) / sizeof(a[0]);
    mybubblesort(a, n);
    for (int i = 0; i < n; i++)
        cout << a[i] << " ";
    cout << endl;

    float b[] = { 10, 3, 6,27, 305, 32 };
    n = sizeof(b) / sizeof(b[0]);
    mybubblesort(b, n);
    for (int i = 0; i < n; i++)
        cout << b[i] << " ";
    cout << endl;

    int c[] = { 10, 3, 6, 27, 305, 32 };
    n = sizeof(b) / sizeof(b[0]);
    mybubblesort(c, n);
    for (int i = 0; i < n; i++)
        cout << c[i] << " ";
    cout << endl;

    cout << "----------\n";
    foititis d[5] = { {"Nikos", 123, 8.3}, {"Nikolaou", 155, 6.4},
       {"Nikolapopoulos", 234, 5.4},{"Nikolaidis", 804, 3.7},{"Nikoloudis", 504, 7.5} };

    n = sizeof(d) / sizeof(d[0]);
    mybubblesort(d, n);
    for (int i = 0; i < n; i++)
        cout << d[i] << endl;

}

ostream& operator<<(ostream& tout, foititis& f)
{
    tout << f.onoma << " " << f.am << " " << f.b << " ";
    return tout;
}
From Δημ.Μανωλάκης to Everyone : 05 : 11 PM
using namespace std;
template <class Typos>
void mybubblesort(Typos x[], int n)
{
    Typos t;
    int i, k;
    bool EgineAntimetathesi = true;

    for (i = 0; i < n - 1 && EgineAntimetathesi; i++)
    {
        EgineAntimetathesi = false;

        for (k = n - 1; k > i; k--)
        {
            if (x[k] < x[k - 1])
            {
                t = x[k];
                x[k] = x[k - 1];
                x[k - 1] = t;
                EgineAntimetathesi = true;
            }
        }
    }
}
