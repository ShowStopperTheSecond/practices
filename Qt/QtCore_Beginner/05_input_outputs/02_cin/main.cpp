#include <QCoreApplication>
#include <QDebug>
#include <iostream>
#include <QString>
using namespace std;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo()<< "Please Enter your age here:";
    int age;
    cin>> age;
    qInfo() << "Your age is " << age;


    return a.exec();
}
