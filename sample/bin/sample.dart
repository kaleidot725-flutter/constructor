
void main(List<String> arguments) {
  var a = Point(10, 30);
  print("a: " + a.x.toString() + " " + a.y.toString());

  var b = Point2(20, 40);
  print("b: " + b.x.toString() + " " + b.y.toString());

  var c1 = Point3(60, 80);
  print("c1: " + c1.x.toString() + " " + c1.y.toString());

  var c2 = Point3.max();
  print("c2: " + c2.x.toString() + " " + c2.y.toString());

  var c3 = Point3.min();
  print("c3: " + c3.x.toString() + " " + c3.y.toString());

  var d = Point4();
  print("d: " + d.x.toString() + " " + d.y.toString());

  var e = Point5();
  print("e: " + e.x.toString() + " " + e.y.toString());

  var f = Point6();
  print("f: " + f.x.toString() + " " + f.y.toString());
}

/// 通常のコンストラクター
class Point {
  double x = 0;
  double y = 0;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }
}

/// 上記のようにも書けるが、省略してそのまま引数に変数を渡す形でも、書ける
class Point2 {
  double x = 0;
  double y = 0;

  Point2(this.x, this.y);
}

/// 名前付きコンストラクタ
class Point3 {
  double x = 0;
  double y = 0;

  Point3(this.x, this.y);

  Point3.origin() : x = 0, y = 0;

  Point3.max(): x = 1, y = 1;

  Point3.min(): x = -1, y = -1;
}

/// リダイレクトコンストラクタ
class Point4 {
  double x = 0;
  double y = 0;

  Point4() : this.origin();

  Point4.origin() : x = 1, y = 2;
}

/// Initializer Lists
class Point5 {
  double x = 0;
  double y = 0;

  Point5(): x = 3, y = 4;
}

/// 定数コンストラクタ
class Point6 {
  final double x = 100;
  final double y = 200;

  const Point6();
}