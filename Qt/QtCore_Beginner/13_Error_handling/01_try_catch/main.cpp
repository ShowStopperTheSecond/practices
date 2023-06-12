#include <QCoreApplication>
#include <iostream>
#include <QDebug>
using namespace std;


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    int num = 121;

    while (true) {
        try {
            qInfo()<<"Enter a number here please: ";
            int denum = 0 ;
            cin >> denum;
            if (denum==0) throw std::invalid_argument("QTF");
            int x = num/denum;

            qInfo()<<"The result is: "<< x;
        }catch(std::exception e){
            qInfo()<<e.what();
        }

        catch (...) {
            qWarning("something terrible happened!");
//            return 0;
        }

    }
    return a.exec();
}
