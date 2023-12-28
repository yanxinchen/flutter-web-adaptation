/// dart 单例写法
/// https://flutter.cn/community/tutorials/singleton-pattern-in-flutter-n-dart
class Singleton {
  Singleton._internal();

  factory Singleton() => _instance;

  static late final Singleton _instance = Singleton._internal();
}
