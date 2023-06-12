#ifndef MAMMAL_H
#define MAMMAL_H
#include "animal.h"
#include <QDebug>


class Mammal: public Animal
{
public:
    Mammal();
    bool has_backbone(){return true;}
};

#endif // MAMMAL_H
