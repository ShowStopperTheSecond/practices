#include <QCoreApplication>
#include <iostream>
using namespace std;



int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    struct laptop{
        float weight;
        float asGram(){
            return weight * 1000;
        }
    };

    laptop notebook;
    qInfo()<< "Please enter weight:";
    cin >> notebook.weight;
    qInfo()<< "weight:" << notebook.weight;
    qInfo()<< "weight (gr): "<< notebook.asGram();



    return a.exec();
}
