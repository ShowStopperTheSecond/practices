#include "test.h"
#include <QDebug>

test::test(QObject *parent)
    : QObject{parent}
{

}

void test::doStuff()
{
    qInfo()<<this<< "is constructed";
}

void test::doOtherStuff()
{
    qInfo()<<"do things independently without any need for an instance";
}
