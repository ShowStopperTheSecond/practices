#include "test.h"
#include <QDebug>
test::test(QObject *parent)
    : QObject{parent}
{
    qInfo() << this << " Is created";
}

test::~test()
{
    qInfo()<< this << " is getting destroyed...";
}

void test::do_stuff()
{
    qInfo() << this << Q_FUNC_INFO;
}
