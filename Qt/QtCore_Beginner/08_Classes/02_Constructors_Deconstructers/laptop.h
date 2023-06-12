#ifndef LAPTOP_H
#define LAPTOP_H

#include <QObject>

class Laptop : public QObject
{
    Q_OBJECT
public:
    explicit Laptop(QObject *parent = nullptr, QString name="Owner Unknown");
    ~Laptop();
    float weight = 0;
    QString name;
    float as_g();


signals:

};

#endif // LAPTOP_H
