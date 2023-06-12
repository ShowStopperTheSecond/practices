#ifndef RACECAR_H
#define RACECAR_H

#include "car.h"
#include <QDebug>

class RaceCar : public Car
{
public:
    explicit RaceCar(QObject *parent = nullptr);
    void goFast();
};

#endif // RACECAR_H
