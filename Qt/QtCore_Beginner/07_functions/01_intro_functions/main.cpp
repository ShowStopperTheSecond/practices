#include <QCoreApplication>

//in cpp the code is read from top to button

void test(){
    qInfo("This is test");
//    test2(); // We can't call this function because the compiler doesn't know about it yet;
}

void test2(){
    qInfo("This is test2");
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    test();
    return a.exec();
}
