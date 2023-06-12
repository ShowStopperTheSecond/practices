#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qint8 Qint8bit = 0;
    qint16 Qint16bit = 0;
    qint32 Qint32bit = 0;
    qint64 Qint64bit = 0;
    qintptr pointer_int = 0;
    qInfo()<<" size of qint8" << sizeof(Qint8bit);
    qInfo()<<" size of qint16" << sizeof(Qint16bit);
    qInfo()<<" size of qint32" << sizeof(Qint32bit);
    qInfo()<<" size of qint64" << sizeof(Qint64bit);

    return a.exec();
}
