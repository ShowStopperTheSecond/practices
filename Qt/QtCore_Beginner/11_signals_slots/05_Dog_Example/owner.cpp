#include "owner.h"

Owner::Owner(QObject *parent)
    : QObject{parent}
{

}

void Owner::treat()
{
    emit give_bone();
}
