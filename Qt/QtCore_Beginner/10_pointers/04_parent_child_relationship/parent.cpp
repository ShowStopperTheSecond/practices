#include "parent.h"

Parent::Parent(QObject *parent)
    : QObject{parent}
{
     qInfo()<< "Parent @" << this << " is created";
}

Parent::~Parent()
{
     qInfo()<< "Parent @" << this << " is destroyed";
}
