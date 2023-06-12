#include <QCoreApplication>
#include <QDate>
#include <QDateTime>
#include <QTime>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QDate date = QDate::currentDate();
    qInfo()<<date.toString(Qt::DateFormat::TextDate);
    qInfo()<<date.addDays(35621).toString(Qt::DateFormat::ISODateWithMs);


    return a.exec();
}
