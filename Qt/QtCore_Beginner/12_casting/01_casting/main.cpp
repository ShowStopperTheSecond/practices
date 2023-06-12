#include <QCoreApplication>
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    float number = 29.34;
    int implicit_casted_number = number;
    int explicit_casted_number = (int) number;
    qInfo()<< "the original number: " << number;
    qInfo()<<"Implicit casted number: " << implicit_casted_number;
    qInfo()<<"Explicit casted number: " << explicit_casted_number;


    return a.exec();
}
