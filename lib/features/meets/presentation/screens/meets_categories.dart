import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/core/widgets/custom_container.dart';
import 'package:projectunispiritfinalt/features/meets/data/data_source/meet_categories.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/providers/meets_provider.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/screens/meets_list.dart';
import 'package:provider/provider.dart';

class MeetsCategoriesScreen extends StatefulWidget {
  const MeetsCategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MeetsCategoriesScreen> createState() => _MeetsCategoriesScreenState();
}

class _MeetsCategoriesScreenState extends State<MeetsCategoriesScreen> {
  Future<void> loadCategories() async {
    context.read<MeetsProvider>().getCourseCategories();
  }

  @override
  void initState() {
    super.initState();
    loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MeetsProvider>(
        builder: (context, MeetsProvider provider, _) {
      if (provider.meetsCategories.isEmpty) {
        return GestureDetector(
          onTap: () async {
            for (final element in MeetCategoryHelper().categories) {
              provider.addCourseCategory(element);
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('sem categorias'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: provider.getCourseCategories,
                  child: const Text('Reload'),
                ),
              ],
            ),
          ),
        );
      }
      return RefreshIndicator(
        onRefresh: provider.getCourseCategories,
        child: ListView.builder(
          itemCount: provider.meetsCategories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              courseInfo: provider.meetsCategories[index],
            );
          },
        ),
      );
    });
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.courseInfo,
  }) : super(key: key);

  final CourseInfoModel courseInfo;

  void navigateToCourseMeetings(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return MeetsListScreen(courseId: courseInfo.courseId!);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (courseInfo.courseId == null) return;
        navigateToCourseMeetings(context);
      },
      child: CustomContainer(
        border: Border.all(width: 3, color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              courseInfo.courseName ?? 'no name',
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
      ),
    );
  }
}
