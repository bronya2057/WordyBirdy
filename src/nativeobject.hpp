#ifndef NATIVEOBJECT_HPP
#define NATIVEOBJECT_HPP

#include <QObject>

class NativeObject : public QObject
{
    Q_OBJECT
public:
    explicit NativeObject(QObject *parent = nullptr);

    Q_PROPERTY(QString text READ text)
        const QString& text() { return mText; }
signals:

private:
    QString mText;
};

#endif // NATIVEOBJECT_HPP
