#include <QCoreApplication>
void test1(QObject o){
    qInfo() << &o <<Q_FUNC_INFO;
}

QObject * get_new_object(){
    return new QObject();
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QObject *o =  get_new_object(); // A memory leak is hapenning if we don't delete it.

    return a.exec();
}
