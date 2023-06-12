#include "car.h"

Car::Car(QObject *parent)
    : QObject{parent}
{

}

void Car::go()
{
    qInfo()<<"Go!";

}

void Car::stop()
{
    qInfo()<<"Stop!";
}
