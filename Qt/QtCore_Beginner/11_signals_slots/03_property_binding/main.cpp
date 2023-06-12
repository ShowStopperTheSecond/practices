#include <QCoreApplication>
#include "test.h"
#include "watcher.h"
#include <QVariant>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    test source;
    watcher destination;
    QObject::connect(&source, &test::messageChanged, &destination, &watcher::messageChanged);

    source.setMessage("WTF");
    source.setMessage("Wth is going on here? ");
    source.setProperty("message", QVariant("My name is javid"));
    return a.exec();
}
