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
    Car* car = new Car(&a,"javid's", 34);
    RaceCar* raceCar = new RaceCar(&a);
    Feline* cat = new Feline(&a, "Tom");

    RaceCar* new_raceCar = dynamic_cast<RaceCar*> (car);
    if (new_raceCar){
        qInfo()<<"Dynamic Casting car to race car succeded";
        qInfo()<<"name: "<< new_raceCar->name;
    }else{
        qInfo()<<"Dynamic Casting car to race car failed";
    }

    RaceCar* new_raceCar2 = static_cast<RaceCar*> (car);
    if (new_raceCar2){
        qInfo()<<"Static Casting car to race car succeded";
        qInfo()<<"name: "<< new_raceCar2->name;
    }else{
        qInfo()<<"Static Casting car to race car failed";
    }


    Car* new_car = static_cast<Car*> (raceCar);
    if (new_car){
        qInfo()<<"Static Casting raceCar to  car succeded";
        qInfo()<<"name: "<< new_car->name;
    }else{
        qInfo()<<"Static Casting raceCar to car failed";
    }

    Car* new_car2 = dynamic_cast<Car*> (raceCar);
    if (new_car2){
        qInfo()<<"Dynamic Casting raceCar to  car succeded";
        qInfo()<<"name: "<< new_car2->name;
    }else{
        qInfo()<<"Dynamic Casting raceCar to car failed";
    }



    Car* new_car3 = qobject_cast<Car*> (raceCar);
    if (new_car){
        qInfo()<<"QObject Casting raceCar to  car succeded";
        qInfo()<<"name: "<< new_car3->name;
    }else{
        qInfo()<<"QObject Casting raceCar to car failed";
    }

    RaceCar* new_car4 = qobject_cast<RaceCar*> (car);
    if (new_car2){
        qInfo()<<"QObject Casting car to  racecar succeded";
        qInfo()<<"name: "<< new_car4->name;
    }else{
        qInfo()<<"QObject Casting car to racecar failed";
    }

//    Feline* new_cat = reinterpret_cast<Feline*> (car);
//    if (new_cat){
//        qInfo()<<"Reinterpret Casting car to cat succeded";
//        qInfo()<<"name: "<< new_cat->name;
//    }else{
//        qInfo()<<"Reinterpret Casting car to cat failed";
//    }


//    Feline* new_cat2 = reinterpret_cast<Feline*> (raceCar);
//    if (new_cat2){
//        qInfo()<<"Reinterpret Casting race car to cat succeded";
//       qInfo()<<"name: "<< new_cat2->name;
//    }else{
//        qInfo()<<"Reinterpret Casting race car to cat failed";
//    }


    return a.exec();
}
