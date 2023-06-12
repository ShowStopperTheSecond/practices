#include <QCoreApplication>
#include <QDate>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QVariant date = QDate::currentDate();
    QByteArray buffer = date.toByteArray();
//    qInfo()<< buffer;
    QVariant d1 = 1;
    QVariant d2 = "WTF";
    qInfo()<<d2 << d1;

    return a.exec();
}
