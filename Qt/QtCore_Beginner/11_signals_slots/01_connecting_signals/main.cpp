#include <QCoreApplication>
#include <destination.h>
#include <source.h>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Source oSource;
    Destination oDestination;
    QObject::connect(&oSource, &Source::mySignal, &oDestination, &Destination::mySlot);
    oSource.test();
    return a.exec();
}
