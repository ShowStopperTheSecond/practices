#include "dog.h"

Dog::Dog(QObject *parent)
    : QObject{parent}
{

}

void Dog::take_bones()
{
    qInfo()<<"Barks!";
}
