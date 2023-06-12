#include <QCoreApplication>
#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "Please enter your age here:";
    int age = 0;
    cin >> age;
    qInfo()<< "Youre age is "<< age << "\n";

   switch (age){
   case 18 :
       cout <<"You can live";
       break;
    case 19:
       cout << "You can live more";
       break;
   }
}


