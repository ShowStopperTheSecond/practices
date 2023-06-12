#include <QCoreApplication>
#include <QDebug>

/*
 *
 *
 *
 *
 * What theh eck is going on here
 *
 *
 *
 */


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo()<<" Hello World!";

    return a.exec();
}
