#ifndef TIMER_H
#define TIMER_H

#include <QObject>
#include <QTimer>
#include <QDebug>

class Timer : public QObject
{
    Q_OBJECT
    QTimer m_timer;
    int m_counter;
public:
    explicit Timer(QObject *parent = nullptr);


signals:

public slots:
    void timeout();


};

#endif // TIMER_H
