#include <QCoreApplication>


//template<class T>
//class test:public QObject{
//    Q_OBJECT
//public:
//    test(QObject* ptr);
//    T add(T v1, T v2);
//};

//Templates don't work with Q_Objects;


template<class T>
class test{
public:
//    test(QObject* ptr = nullptr);
    T add(T v1, T v2){ return v1 + v2;}

};




int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    test<QString> t;
    qInfo()<< t.add("Hello ", "World!");
    return a.exec();
}
