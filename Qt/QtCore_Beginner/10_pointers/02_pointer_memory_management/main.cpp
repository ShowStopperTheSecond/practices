#include <QCoreApplication>

void display(QString *value){
    qInfo() << "The pointer itself points to " << value;
    qInfo() << "The pointer is located at" << &value;
    qInfo() << "The Data located at" << value << " is" << *value;
}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QString *name = new QString("Javid");
    display(name);
    delete name;
    display(name);
    return a.exec();
}
