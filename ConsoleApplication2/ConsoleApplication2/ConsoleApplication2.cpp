// ConsoleApplication2.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;
class OrthP
{
    double a, b;
public:
    OrthP(double, double);//A1
    ~OrthP();//A4
    void diavase();//B
    void auxise(double, double);//C
    double perim();//D
    bool identical(OrthP);//E
    OrthP operator / (double);//St
    void deikse()
    {
        cout << a << " " << b << endl;
    }
    OrthP()
    {
        a = 5; b = 6;
        cout << "xwris kanena orisma " << endl;//A3
    }
    OrthP(double m)
    {
        a = m;  b = m;
        cout << "me ena orisma " << endl;//A3
    }
    void klimakwse();
};  

void OrthP::klimakwse()
{
    a = a * 2;
    b = b * 2;
}
OrthP::OrthP(double p, double n)//A1
{
    a = p;
    b = n;
    cout << "me dyo orismata " << endl;//A3
}
OrthP::~OrthP()
{
    cout << "katastrofh " << a << " " << b << endl;//A4
}
void OrthP::diavase()//B
{
    cout << "dwse pleyres par/gramou " << endl;
    cout << "prwth: ";
    cin >> a;
    cout << "deyerh: ";
    cin >> b;
}
void OrthP::auxise(double aa, double bb)//C,C2 den thimamai
{
    a = a + a;
    b = b + b;
}
double OrthP::perim()//D
{
    double perim;
    perim = 2 * a + 2 * b;
    return perim;
}
bool OrthP::identical(OrthP pn)//E
{
    if (a==pn.a && b==pn.b)
        return true;
    else
        return false;
}
OrthP OrthP:: operator/(double z)//St
{
    OrthP pk;
    pk.a = a / z;
    pk.b = b / z;
    return pk;
}

int main()
{
    OrthP p1, p2, p3(1), p4(3, 2);//A2
    double i, k, perimetros2, perimetros4, pol;
    p1.diavase();//B
    p1.deikse();
    p2.deikse();
    p3.deikse();
    p4.deikse();
    p3.auxise(1, 1);//C
    cout << "nees diastaseis gia to p3 ";
    p3.deikse();
   perimetros2= p2.perim();//D
   cout << "h perimetros toy 2 einai " << perimetros2<<endl;
   perimetros4 = p4.perim();
   cout << "h perimetros tou 4 einai " << perimetros4 << endl;
   pol = perimetros2 + perimetros4;
   cout << "h synolikh perimetros twn 2 kai 4 einai " << pol << endl;
   if (p1.identical(p3))//E
       cout << "ta p1 kai p3 einai idia " << endl;
   else
       cout << "ta p1 kai p3 den einai idia "<<endl;
   p4 = p4 / 2;//St
   cout << "diastaseis gia to p4 meta thn diairesh ";
   p4.deikse();
   
}

