#include <QCoreApplication>
#include <iostream>
#include <QDebug>

using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    int start = 50;
    int end = 100;
    int i = start;
    while (i<end){
        cout<< "while :" << i << endl;
        i++;

    }


    i = start;
    do {
        cout<< "do :" << i << endl;
        i++;

    }while(i<end);
    return a.exec();
}
