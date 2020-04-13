#ifndef RGMAP_H
#define RGMAP_H

#include <QObject>
#include <QPixmap>
#include <QRectF>
#include <QList>
#include <QPoint>
#include <QGeoCoordinate>

class RGMap : public QObject
{
    Q_OBJECT
public:
    explicit RGMap(QObject *parent = 0);

    bool loadMap(const QString &fileName, const QPixmap &map = QPixmap(), const QRectF mapBounds = QRectF());
    bool hasGeoBounds() const;
    QList<QPoint> mapRoutePoints(const QList<QGeoCoordinate> &geoCoordinates) const;
    QString fileName() const;
    bool isEmpty() const;

    void read (const QJsonObject &json);
    void write (QJsonObject &json);

signals:
    void mapLoaded(const QPixmap &map);

public slots:

private:
    QRectF mGeoBounds;
    QPixmap mMap;
    QString mFileName;
};

#endif // RGMAP_H
