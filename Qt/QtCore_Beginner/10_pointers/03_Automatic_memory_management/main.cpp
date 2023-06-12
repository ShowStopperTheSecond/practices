#include <QCoreApplication>
#include "test.h"
void wow(){
    std:std::unique_ptr<test> t(new test);
    t->do_stuff();

}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo()<< "Started...";
    wow();
    qInfo()<<"Finished...";
    return a.exec();
}
