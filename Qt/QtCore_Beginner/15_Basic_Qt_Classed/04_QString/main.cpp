
#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QString name = "Javid Norouzi";
    name= "Mr. " + name;
    qInfo()<< name;
    int idx = name.indexOf("a");
    name = name.replace('a', "4");
    qInfo()<< name;
    QList words = name.split(" ");
    qInfo()<<words;
    return a.exec();
}
