#include <QCoreApplication>
//#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    int whole_number = 32;
    double pi = 3.14159265;
    qInfo() << "My number is " << whole_number ;
    qInfo() << "For those of you who don't know what pi is: " << pi;
    qInfo() << "Size of pi is: " << sizeof(pi);

    return 0;
}
