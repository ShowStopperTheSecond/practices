#include <QCoreApplication>
#include <array>
#include <iostream>
using namespace std;


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    int m[3][3];
    for (int i=0; i<3;i++){
        for (int j=0; j<3;j++){
            m[i][j]= i*j;
            qInfo()<< m[i][j];
        }
        qInfo()<< "\n";
    }
    array<array<int, 10>, 10> n;
    for (int i=0; i<10;i++){
        for (int j=0; j<10;j++){
            n[i][j]= i*j;
            cout<< n[i][j]<< "\t";
        }
        cout<< "\n";
    }
//    return a.exec();
    return 0;
}
