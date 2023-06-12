#include <QCoreApplication>
#include <iostream>
#include <QDebug>
#include <array>
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "please Enter the max iteration loop:\n" ;
    int max_iter = 0;
    cin >> max_iter;
    if (max_iter <0)  qFatal("QTF!");
    for (int i=0; i< max_iter; i++){
        cout<< "i is :" << i <<endl;
    }
    array <int, 4> arr ={1, 2, 3, 4};
    cout << "constant array: "<< endl;
    for (int i=0; i< arr.size(); i++){
        cout << "constant array [" << i << "] = " << arr[i] <<endl;
    }
    return a.exec();
}
