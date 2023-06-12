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

    Car* player1 = new Car(&a);
    RaceCar* player2 = new RaceCar(&a);

    drive(player1);
    drive(player2);
    Car* car = new RaceCar(&a);
    drive(car);

    RaceCar* raceCar = new RaceCar(&a);
    Car* my_car = dynamic_cast<Car*>(raceCar); // Safe way to cast pointers;

    qInfo()<<my_car;
    drive(my_car);
//    driveFast(my_car);
    return a.exec();
}
