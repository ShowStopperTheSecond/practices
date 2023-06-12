#ifndef STATION_H
#define STATION_H

#include <QObject>
#include <QString>

class Station : public QObject
{
    Q_OBJECT
    int channel;
    QString name;

public:
    explicit Station(QObject *parent = nullptr, int channel=0, QString name="UnKnown");
    void broadcast(QString message);

signals:
    void send(int channel, QString name, QString message);

};

#endif // STATION_H
