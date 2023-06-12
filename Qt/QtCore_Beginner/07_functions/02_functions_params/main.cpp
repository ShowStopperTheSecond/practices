#include <QCoreApplication>
#include <iostream>
using namespace std;

int calc(int offset, int age){
//    q << "your age is "<< age;
    int x = offset * age;
    return x;
}
int catYear(int age){
    return calc(9, age);
}
int dogYear(int age){
    return calc(7, age);
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "Please enter your age: \n";
    int age=0;
    cin >> age;
    qInfo() << "Your age is" << age;
    qInfo() << "Your age in cat years is " << catYear(age);
    qInfo() << "Your age in dog years is " << dogYear(age);
    return a.exec();
}
