#include "source.h"

Source::Source(QObject *parent)
    : QObject{parent}
{

}

void Source::test()
{
    emit mySignal("WTF! what are you doing here?");
}
