#ifndef CAILINE_H
#define CAILINE_H
#include <mammal.h>
#include <QDebug>

class Cailine: public  Mammal
{
public:
    Cailine();
    void bark(){qInfo()<<"bark";}
};

#endif // CAILINE_H
