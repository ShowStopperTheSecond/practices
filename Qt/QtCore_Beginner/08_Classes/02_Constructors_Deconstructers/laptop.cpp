#include "laptop.h"
#include <QDebug>
Laptop::Laptop(QObject *parent, QString name)
{
    this->setObjectName(name);
    qInfo()<<this<< " " << "Constructed, name is: " << name;
    this->name = name;
}

Laptop::~Laptop()
{
    qInfo()<< this << "Deconstructing ..." ;
}

float Laptop::as_g()
{
    return this->weight * 1000;
}
