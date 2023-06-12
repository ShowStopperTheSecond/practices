#include <QCoreApplication>
#include <QMap>
#include "pet.h"



typedef QMap<QString, Pet*> PetMap;

PetMap create_pet_list(int number_of_pets=10){


    PetMap petlist;
    for(int i=0; i<number_of_pets; i++){
        Pet* pet = new Pet;
        QString name=QString::number(i);
        pet->setName(name);
        pet->setAge(3*i);

        petlist.insert(name, pet);


    }

    return petlist;
}



void printMap(PetMap petList){

    foreach(QString key , petList.keys()){
        qInfo()<<"key: " << key<< "Pet name: "<< petList.value(key)->name()<< "Pet age: "<< petList.value(key)->age();
    }
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    PetMap pets = create_pet_list(10);
    Pet* newpet = new Pet;
    newpet->setName("Tom");
    newpet->setAge(234);

    pets.insert("javid", newpet);
    pets.insert("4", newpet);
    printMap(pets);
    return a.exec();
}
