#include <QCoreApplication>
#include "agecalc.h"

void print_info(AgeCalc & calc){
    qInfo()<< calc.name() << " is " << calc.humanYears() <<" years old.";
    qInfo()<< calc.name() << " is " << calc.catYears() <<" years old in cat years.";
    qInfo()<< calc.name() << " is " << calc.dogYears() <<" years old in dog yars.";

}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    AgeCalc javid;
    javid.setName("javid");
    javid.setAge(23);
    print_info(javid);

    return a.exec();
}
