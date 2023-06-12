#include <QCoreApplication>

void test_byval(QString value){
    qInfo()<< "Address is " << &value << "and size is "<< sizeof(value);
}

void test_byref(QString &value){
    qInfo()<< "Address is " << &value << "and size is "<< sizeof(value);
}

void testPtr(QString* value){
    qInfo()<< "The actuall variable address is " << value << "and size is "<< sizeof(*value);
    qInfo()<< "pointer address is " << &value << "and size is "<< sizeof(value);

}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QString name = "wtf is going on here";
    test_byval(name);
    test_byref(name);
    testPtr(&name);

    return a.exec();
}
