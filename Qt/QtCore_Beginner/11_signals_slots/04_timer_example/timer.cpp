#include "timer.h"

Timer::Timer(QObject *parent)
    : QObject{parent}
{
    m_counter = 0;
    QObject::connect(&m_timer, &QTimer::timeout, this, &Timer::timeout);

    m_timer.setInterval(1000);
    m_timer.start();
}

void Timer::timeout()
{
    qInfo()<< "QTF!";
    m_counter ++;
    if (m_counter >10) m_timer.stop();

}
