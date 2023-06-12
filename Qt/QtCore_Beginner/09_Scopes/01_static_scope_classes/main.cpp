#include <QCoreApplication>
#include "animal.h"
#include <array>
int Animal::count = 0;



int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    std::array<Animal*, 10> b;


    for (int i = 0; i < 10; ++i) {
        b[i] = new Animal;
    }

    qInfo()<< "Number of animals: " << Animal::count;
    for (int i = 0; i < 3; ++i) {
        delete b[i] ;
    }
    qInfo()<< "Number of animals: " << Animal::count;
    return a.exec();
}
