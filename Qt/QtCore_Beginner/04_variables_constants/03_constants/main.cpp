#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    const float pi = 3.14159265;
    qInfo()<< "WTF";
    qInfo() << "Pi is "<< pi;
//    pi = 32.324;
//    qInfo() << "Pi is "<< pi;
    return a.exec();
}
