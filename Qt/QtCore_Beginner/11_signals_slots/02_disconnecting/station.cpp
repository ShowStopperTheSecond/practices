#include "station.h"


Station::Station(QObject *parent, int channel, QString name)
{
    this->name = name;
    this->channel = channel;
}

void Station::broadcast(QString message)
{
    emit send(channel, name, message);
}
