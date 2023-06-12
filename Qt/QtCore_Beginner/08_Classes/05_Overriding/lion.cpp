#include "lion.h"
#include <QDebug>
Lion::Lion(QObject *parent)
    : Feline{parent}
{

}

void Lion::speak()
{
    qInfo()<< "Roar!!!!!";
}
