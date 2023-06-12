#include "child.h"

Child::Child(QObject *parent)
    : QObject{parent}
{
    qInfo()<< "Child @" << this << " is created";
}

Child::~Child()
{
    qInfo()<< "Child @" << this << " is destroyed";
}
