#include <QCoreApplication>
#include <QString>
#include <QTextStream>
#include <iostream>
#include "station.h"
#include "radio.h"


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    Radio boombox;
    Station *stations[3];
    stations[0] = new Station(&boombox, 12, "News");
    stations[1] = new Station(&boombox, 332, "Music");
    stations[2] = new Station(&boombox, 32, "Science");

    boombox.connect(&boombox, &Radio::quit, &a, &QCoreApplication::quit, Qt::QueuedConnection); // Doesn't work

    emit boombox.quit();
    while(true) {
        qInfo()<<"Please enter on, off, test, quit";
        QTextStream qtin(stdin);
        QString command = qtin.readLine().trimmed().toUpper();
        if (command=="QUIT"){
            emit boombox.quit();
        }

        if (command == "ON"){
            for (int i=0; i<3; i++){
                QObject::connect(stations[i], &Station::send, &boombox, &Radio::listen);
            }
        }

        if (command == "TEST"){
            qInfo()<<"testing...";
            for (int i=0; i<3; i++){
               stations[i]->broadcast("BoradCasting alive");
            }
        }
        if (command == "OFF"){
            for (int i=0; i<3; i++){
                QObject::disconnect(stations[i], &Station::send, &boombox, &Radio::listen);
            }
        }

    }




    return a.exec();
}
