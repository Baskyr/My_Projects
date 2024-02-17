#include <iostream>
using namespace std;
class OrthP
{
    double a, b;
public:
    OrthP(double, double);
    void deikse()
    {
        cout << a << " " << b << endl;
    }
    OrthP()
    {
        a = 5; b = 6;
    }
    OrthP(double m)
    {
        a = m;  b = m;
    }
    void klimakwse();
};  // τέλος δήλωσης κλάσης

void OrthP::klimakwse()
{
    a = a * 2;
    b = b * 2;
}
OrthP::OrthP(double p, double n)
{
    a = p;
    b = n;
}
int main()
{
    OrthP p1(3, 7);
}
