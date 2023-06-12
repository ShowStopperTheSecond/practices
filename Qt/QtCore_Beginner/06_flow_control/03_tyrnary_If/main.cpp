#include <QCoreApplication>
#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "Please enter your age here:";
    int age = 0;
    cin >> age;
    qInfo()<< "Youre age is "<< age << "\n";

   age > 0 && age < 120 ?  qInfo("valid age is entered") : qInfo("Please Enter a valid number");
    return a.exec();
}
