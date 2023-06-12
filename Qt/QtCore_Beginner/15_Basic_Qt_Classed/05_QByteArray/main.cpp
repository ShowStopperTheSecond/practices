#include <QCoreApplication>
#include <QDate>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QDate date;
    date = date.currentDate();
    QByteArray buffer = date.toString().toUtf8();
    qInfo()<< buffer;
    QList list = buffer.split(' ');
    qInfo()<< buffer;
    qInfo() << buffer.rightJustified(30, '.');
    return a.exec();
}
