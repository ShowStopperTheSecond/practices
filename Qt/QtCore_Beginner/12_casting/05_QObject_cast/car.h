#ifndef CAR_H
#define CAR_H

#include <QObject>
#include <QDebug>

class Car : public QObject
{
    Q_OBJECT
public:
    explicit Car(QObject *parent = nullptr, QString name = "UnknownCar", int number_of_wheels=4);
    void go();
    void stop();
    int number_of_wheels;
    QString name;


signals:

};

#endif // CAR_H
