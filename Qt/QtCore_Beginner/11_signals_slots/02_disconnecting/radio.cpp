#include "radio.h"

Radio::Radio(QObject *parent)
    : QObject{parent}
{

}

void Radio::listen(int channel, QString name, QString message)
{
    std::cout<<"listenning.."<<std::endl;
    qInfo()<< "Channel: "<< channel<< ", Name:" << name << ", Message: " << message<< "\n";
}
