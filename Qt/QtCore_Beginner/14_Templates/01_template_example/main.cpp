#include <QCoreApplication>


template<typename T>
void print(T value){
    qInfo()<<value;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    print<int> (12);
    print<QString>("WTF is going on here");
    return a.exec();
}
