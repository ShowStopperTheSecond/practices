#ifndef AGECALC_H
#define AGECALC_H

#include <QObject>

class AgeCalc : public QObject
{
    Q_OBJECT
public:
    explicit AgeCalc(QObject *parent = nullptr);

    void setAge(int newAge);

    int age() const;

    const QString &name() const;
    void setName(const QString &newName);
    int dogYears();
    int catYears();
    int humanYears();


signals:

private:
    int m_age;
    QString m_name;


};

#endif // AGECALC_H
