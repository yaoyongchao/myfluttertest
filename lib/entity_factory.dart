import 'package:myflutter/teacher_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "TeacherEntity") {
      return TeacherEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}