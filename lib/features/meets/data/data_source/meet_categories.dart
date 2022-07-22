import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';

class MeetCategoryHelper {
  final List<CourseInfoModel> categories = [
    for (int index = 0; index < categoriesNames.length; index++)
      CourseInfoModel(
        courseName: categoriesNames[index],
      ),
  ];
}

final List<String> categoriesNames = [
  'Algebra Linear',
  'Linguagens de Programação-I',
  'Linguagens de Programação-II',
  'Computação movel'
];
