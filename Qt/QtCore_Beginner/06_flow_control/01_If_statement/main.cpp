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

    if (age <=0 || age >= 120) qFatal("Please Enter a valid age\n");
    if (age < 18){
        cout <<"You're not an adult! come back when you're older :)  ";
    }
    if (age >= 18 && age <= 21){
        qInfo()<<"You're an adult but you can't really drink alchohol :(";
    }

    return a.exec();
}
