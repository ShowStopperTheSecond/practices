#include <QCoreApplication>
#include "feline.h"
#include "lion.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Feline animal;
    animal.speak();
    Lion leo;
    leo.speak();

    return a.exec();
}
