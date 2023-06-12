#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QList<int> numbers({1, 2, 3, 4, 5,6});
    for(int i=0; i<100; i++){
        numbers.append(i);
    }
    qInfo()<<numbers.length();
    qInfo()<<numbers.takeLast();
    return a.exec();
}
