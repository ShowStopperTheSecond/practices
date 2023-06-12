#include "agecalc.h"

AgeCalc::AgeCalc(QObject *parent)
    : QObject{parent}
{

}

void AgeCalc::setAge(int newAge)
{
    m_age = newAge;
}

int AgeCalc::age() const
{
    return m_age;
}

const QString &AgeCalc::name() const
{
    return m_name;
}

void AgeCalc::setName(const QString &newName)
{
    m_name = newName;
}

int AgeCalc::dogYears()
{
    return m_age * 7;
}

int AgeCalc::catYears()
{
    return m_age * 9;
}

int AgeCalc::humanYears()
{
    return m_age;
}
