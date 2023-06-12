#include <QCoreApplication>
#include <iostream>

using namespace std;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    cout << "Standard output"<< endl;
    cerr << "Standard error" << endl;
    return a.exec();
}
