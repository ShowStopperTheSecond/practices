#include <QCoreApplication>
#include "owner.h"
#include "dog.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Owner owner;
    Dog dog;
    QObject::connect(&owner, &Owner::give_bone, &dog, &Dog::take_bones, Qt::ConnectionType::AutoConnection);
    for (int i = 0; i < 10; ++i) {
//         QObject::connect(&owner, &Owner::give_bone, &dog, &Dog::take_bones, Qt::ConnectionType::AutoConnection);
        QObject::connect(&owner, &Owner::give_bone, &dog, &Dog::take_bones, Qt::ConnectionType::UniqueConnection);
    }
    owner.treat();
    return a.exec();
}
