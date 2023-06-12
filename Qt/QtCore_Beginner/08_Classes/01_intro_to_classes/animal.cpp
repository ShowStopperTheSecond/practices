#include "animal.h"

Animal::Animal(QString name,QObject *parent)
    : QObject{parent}
{
    qDebug()<<this<< "constructed";
    this->setObjectName(name);

}

void Animal::speak(QString words){
      qDebug()<<this<< words;
}
