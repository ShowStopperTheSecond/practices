#include "feline.h"



Feline::Feline(QObject *parent, QString name)
{
    this->name = name;
}

void Feline::meow()
{
    qInfo() << "meeeooooowwwwww!!!!";
}
