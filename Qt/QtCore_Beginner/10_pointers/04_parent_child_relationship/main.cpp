#include <QCoreApplication>
#include "parent.h"
#include "child.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Child *childy = new Child(&a);
    childy->parent = new Parent(childy);

    delete childy;
    return a.exec();
}
