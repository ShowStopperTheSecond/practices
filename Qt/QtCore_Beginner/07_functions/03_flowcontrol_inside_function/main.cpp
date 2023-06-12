#include <QCoreApplication>
#include <QDebug>
#include <iostream>

using namespace std;

int calc(int offset, int age){
    if (offset <= 0) qFatal("Invalid offset");
    if (age<=0 || age>=120){
        qFatal("Invalid age");
    }
    return offset * age;
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
    qInfo("Please enter your age");
    int age = 0;
    cin >> age;
    qInfo() << "your age is "<< age;
    qInfo()<< "Dog: " << dogYear(age);
    qInfo()<< "Cat: " << catYear(age);
    return a.exec();
}
