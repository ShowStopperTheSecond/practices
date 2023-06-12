#include <QCoreApplication>
#include "feline.h"
#include "car.h"
#include "racecar.h"


void drive(Car* car){
    car->go();
    car->stop();
}


void driveFast(RaceCar* car){
    car->go();
    car->stop();
    car->goFast();
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Car* car = new Car(&a);

    driveFast((RaceCar*) car);
    RaceCar* raceCar = static_cast<RaceCar*>(car); // The benefit is that we can test if the conversion has succeeded or not :)
    driveFast(raceCar);
    //oops


    return a.exec();
}
