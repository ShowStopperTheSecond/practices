#include <QCoreApplication>
#include <QDebug>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    bool isOn = false;
    qInfo()<< "ison: "<< isOn;

    isOn = true;

    qInfo()<< "ison: " << isOn;

    return a.exec();
}
