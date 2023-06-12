#include <QCoreApplication>
#include <QDebug>
#include <iostream>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    std::cout<< "Please Enter your age: "<< std::endl;
    int age=-1;
    std::cout << "Your age is " << age << std::endl;
    qInfo("It's just a bunc of information we want to throw out in the console");
    qDebug("It's Debug messages we want for developers");
    qWarning("It's warning we want to show to the user");
    qCritical("It's critical messages we want to show the user");
    qFatal("It's a fatal error we want to show the user"); // After throwing this the program will crash

    return a.exec();
}
