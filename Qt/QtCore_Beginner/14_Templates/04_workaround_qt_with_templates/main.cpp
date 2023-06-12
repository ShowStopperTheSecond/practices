#include <QCoreApplication>

template<class T>
void print(T value){
    qInfo()<<value;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QObject obj;
//    print<QObject>(obj);
    print<QObject*>(&obj);
    return a.exec();
}
