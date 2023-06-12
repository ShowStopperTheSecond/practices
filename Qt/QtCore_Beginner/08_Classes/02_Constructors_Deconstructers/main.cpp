#include <QCoreApplication>
#include "laptop.h"



float get_weight_as_gram(Laptop& laptop){
    return laptop.as_g();
}
void make_laptops(){
    Laptop javid(nullptr, "javid");
    Laptop javad(nullptr, "Javad");

    javid.weight = 3;
    javad.weight = 4;
    qInfo() << javid.name << " has been creted. and it weights " <<javid.weight << "and as gr:" << get_weight_as_gram(javid);
    qInfo() << javad.name << " has been creted. and it weights " <<javad.weight << "and as gr:" << javad.as_g();
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    make_laptops();
    return a.exec();
}
