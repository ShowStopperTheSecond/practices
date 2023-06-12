#ifndef FELINE_H
#define FELINE_H
#include <mammal.h>
#include <QDebug>


class Feline:public Mammal
{
public:
    Feline();
    void meow(){qInfo()<<"mewo";}
};

#endif // FELINE_H
