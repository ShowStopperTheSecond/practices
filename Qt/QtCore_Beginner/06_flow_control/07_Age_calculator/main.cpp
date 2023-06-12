#include <QCoreApplication>
#include <QDebug>
#include <iostream>
using namespace std;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "Please Enter your age her\n";
    int age;
    cin >> age;
    if (age <120 && age >1){
        cout << "your age is :" << age << endl;
    }
    else{
        qFatal("QTF! Enter a valid number");
    }

    return a.exec();
}
