#include "RGEditPath.h"

RGEditPath::RGEditPath(QGraphicsItem *parent) :
    QGraphicsObject(parent),
    mBoundingRect(QRectF()),
    mousePressed(false)
{
  setPos(0,0);
  setCursor(Qt::CrossCursor);
}

QRectF RGEditPath::boundingRect() const
{
  return mBoundingRect;
 }

void RGEditPath::paint(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *)
{
  Q_UNUSED(painter);
}

void RGEditPath::on_sceneRectChanged()
{
  prepareGeometryChange();
  mBoundingRect=this->scene()->sceneRect();
}

void RGEditPath::mousePressEvent ( QGraphicsSceneMouseEvent * event )
{
  if(event->button()==Qt::LeftButton){
    mousePressed=true;
    addPoint(event->pos().toPoint());
  }
}

void RGEditPath::mouseMoveEvent ( QGraphicsSceneMouseEvent * event )
{
  //check if the left button have been pressed (event->button() does not work)
  if(mousePressed==true)
    addPoint(event->pos().toPoint());
}

void RGEditPath::mouseReleaseEvent ( QGraphicsSceneMouseEvent * event )
{
  if(event->button()==Qt::LeftButton){
    mousePressed=false;
    updatePointList();
  }
}

void RGEditPath::clear()
{
  for(int i=0;i<mEditPathPointList.size();++i){
    delete mEditPathPointList.at(i);
  }
  mEditPathPointList.clear();
  updatePointList();
}

void RGEditPath::editPathPointMoved()
{
  updatePointList();
}

void RGEditPath::editPathPointAdd(RGEditPathPoint * point)
{
  int pointId=mEditPathPointList.indexOf(point);
  QPoint newpoint=QPoint();
  if (pointId!=0) newpoint=(mEditPathPointList.at(pointId)->pos().toPoint()+mEditPathPointList.at(pointId-1)->pos().toPoint())/2;
  RGEditPathPoint *testpoint=new RGEditPathPoint(this,newpoint);
  mEditPathPointList.insert(pointId,testpoint);
  QObject::connect(testpoint,SIGNAL(editMovedPoint()),this,SLOT(editPathPointMoved()));
  QObject::connect(testpoint,SIGNAL(editAddPoint(RGEditPathPoint *)),this,SLOT(editPathPointAdd(RGEditPathPoint *)));
  QObject::connect(testpoint,SIGNAL(editDelPoint(RGEditPathPoint *)),this,SLOT(editPathPointDel(RGEditPathPoint *)));

  updatePointList();
}

void RGEditPath::editPathPointDel(RGEditPathPoint * point)
{
  //remove editPoint:
  mEditPathPointList.removeAll(point);
  delete point;
  updatePointList();
}

void RGEditPath::updatePointList()
{
  QList<QPoint> pointList;
  for(int i=0;i<mEditPathPointList.size();++i){
    pointList.append(mEditPathPointList.at(i)->pos().toPoint());
  }
  emit newPointList(pointList);
}

void RGEditPath::addPoint(QPoint point)
{
  RGEditPathPoint *testpoint=new RGEditPathPoint(this,point);
  mEditPathPointList.append(testpoint);
  QObject::connect(testpoint,SIGNAL(editMovedPoint()),this,SLOT(editPathPointMoved()));
  QObject::connect(testpoint,SIGNAL(editAddPoint(RGEditPathPoint *)),this,SLOT(editPathPointAdd(RGEditPathPoint *)));
  QObject::connect(testpoint,SIGNAL(editDelPoint(RGEditPathPoint *)),this,SLOT(editPathPointDel(RGEditPathPoint *)));
}
