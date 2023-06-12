#ifndef ANIMAL_H
#define ANIMAL_H

#include <QObject>
#include <QDebug>

class Animal : public QObject
{
    Q_OBJECT
public:
    explicit Animal(QString name, QObject *parent = nullptr);
    void speak(QString words);


signals:

};

#endif // ANIMAL_H
