#include <QCoreApplication>
#include <feline.h>
#include <cailine.h>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Feline cat;
    cat.meow();
    cat.setObjectName("TOM");
    Cailine dog;
    dog.bark();
    dog.setObjectName("Doggy");


    return a.exec();
}
