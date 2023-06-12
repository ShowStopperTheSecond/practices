#include <QCoreApplication>
#include <iostream>
using namespace std;

void test_by_ref(int &age){
    age=0;
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    int age = 20;
    qInfo()<< "This is age before calling the function: " << age;
    test_by_ref(age);
    qInfo()<< "This is age after calling the function: " << age;

    return a.exec();
}
