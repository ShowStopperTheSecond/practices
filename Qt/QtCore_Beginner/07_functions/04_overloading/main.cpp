//function overloading is not a good idea

#include <QCoreApplication>

void test(){
    qInfo("This is a test");
}

void test(int age){
    qInfo()<<"Your age is "<< age;
}

void test(QString name){
    qInfo()<<"Your name is" << name;
}

void test(bool active){
    if (active) {
        qInfo("It's active");
    }
    else{
        qInfo()<< "It's not active";

    }
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    test();
    test(12);
    test("javid"); // It fails to find the right function for this piece of code
    test(false);
    return a.exec();
}
