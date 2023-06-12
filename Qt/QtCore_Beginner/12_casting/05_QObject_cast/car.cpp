#include "car.h"


Car::Car(QObject *parent, QString name, int number_of_wheels)
{
    this->name = name;
    this->number_of_wheels = number_of_wheels;
}

void Car::go()
{
    qInfo()<<"Go!";

}

void Car::stop()
{
    qInfo()<<"Stop!";
}
