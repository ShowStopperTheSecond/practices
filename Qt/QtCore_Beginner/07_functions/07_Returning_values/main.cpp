#include <QCoreApplication>
#include <iostream>
using namespace std;
//QObject ret_by_val(){
//    QObject o;
//    o.setObjectName("by_val");
//    return o; // QObjects can't be coppied that's why it doesn't allow you return them.

//}

QObject& ret_by_ref(){
    QObject o;
    o.setObjectName("By_Reference");
    return o;
}
QObject * ret_by_ptr(){
    QObject *o = new QObject; // creating objects manually
    o->setObjectName("By_ptr");
    return o;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

//    QObject o = ret_by_ref(); //The object gets deleted and you can't access it.
    QObject *o = ret_by_ptr();
    qInfo()<<o;
    delete o;

    return a.exec();
}
