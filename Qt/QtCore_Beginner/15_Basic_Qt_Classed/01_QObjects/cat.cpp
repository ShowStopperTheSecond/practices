#include "cat.h"

Cat::Cat(QObject *parent)
    : QObject{parent}
{

}

void Cat::scared()
{
 qInfo()<<"I'm scared";
 emit run();
}
