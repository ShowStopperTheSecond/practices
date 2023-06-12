#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QString sent = "My name is javid. What the heck is your name?";
    QStringList lst = sent.split(" ");
    lst.sort(Qt::CaseInsensitive);
    foreach(QString word, lst){
        qInfo()<<word;
    }
    return a.exec();
}
