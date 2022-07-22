import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectunispiritfinalt/core/widgets/item_picker.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/course_info_model.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/providers/meets_provider.dart';
import 'package:provider/provider.dart';

class CreateMeetScreen extends StatefulWidget {
  const CreateMeetScreen({Key? key}) : super(key: key);

  static const String route = 'create_meet_screen';

  @override
  State<CreateMeetScreen> createState() => _CreateMeetScreenState();
}

class _CreateMeetScreenState extends State<CreateMeetScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  List<CourseInfoModel> coursesCategories = [];

  bool isLoading = false;
  bool loadingCourses = false;

  String? title;
  String? meetingDescription;
  DateTime? meetingDate = DateTime.now();
  String? meetingLink;
  String? courseId;
  String? courseName;
  String? location;
  bool? isOnline;
  int? guestsLimit;

  void _openDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    ).then((DateTime? value) {
      if (value == null) return;
      setState(() => meetingDate = value);
    });
  }

  Future<void> saveMeeting() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => isLoading = true);
    _formKey.currentState!.save();

    try {
      await context.read<MeetsProvider>().saveMeet(newMeeting);
      setState(() => isLoading = true);
      leaveMeetingScreen();
    } catch (error) {
      log('$error');
    } finally {
      setState(() => isLoading = false);
    }
  }

  void leaveMeetingScreen() {
    Navigator.of(context).pop();
  }

  MeetsModel get newMeeting {
    return MeetsModel(
      title: title,
      meetingDescription: meetingDescription,
      creator: FirebaseAuth.instance.currentUser?.displayName,
      createdAt: DateTime.now(),
      meetingDate: meetingDate,
      courseId: courseId,
      location: location,
      isOnline: isOnline ?? false,
      guestsLimit: guestsLimit ?? 8,
    );
  }

  Future<void> getCoursesCategories() async {
    loadingCourses = true;
    final provider = context.read<MeetsProvider>();
    await provider.getCourseCategories();
    setState(() {
      coursesCategories = provider.meetsCategories;
      courseName = coursesCategories.first.courseName;
      loadingCourses = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getCoursesCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new meeting'),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                CustomTextFormField(
                  label: 'Title',
                  onSaved: (newTitle) => title = newTitle,
                ),
                CustomTextFormField(
                  label: 'Description',
                  onSaved: (newDescription) {
                    meetingDescription = newDescription;
                  },
                ),
                CustomTextFormField(
                  label: 'Location',
                  onSaved: (newLocation) => location = newLocation,
                ),
                if (!loadingCourses)
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: ItemPicker(
                      title: 'Course',
                      value: courseName,
                      source: coursesCategories.map((course) {
                        return course.courseName;
                      }).toList(),
                      onChanged: (newCategory) {
                        final courseIndex =
                            coursesCategories.indexWhere((element) {
                          return element.courseName == newCategory;
                        });
                        setState(() {
                        courseId = coursesCategories[courseIndex].courseId;
                        courseName = coursesCategories[courseIndex].courseName;
                        });
                      },
                    ),
                  ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    const Text('Meeting date:'),
                    Expanded(
                      child: TextButton(
                        onPressed: _openDatePicker,
                        child: Text(DateFormat.yMMMd().format(meetingDate!)),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    const Text('Online'),
                    Switch(
                      value: isOnline ?? false,
                      onChanged: (bool newOnlineState) {
                        setState(() => isOnline = newOnlineState);
                      },
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        label: 'Limit',
                        keyboardType: TextInputType.number,
                        validator: (newLimit) {
                          if (newLimit!.isEmpty) return null;
                          try {
                            int.parse(newLimit);
                          } catch (_) {
                            return 'numbers only';
                          }
                          return null;
                        },
                        onChanged: (_) => _formKey.currentState!.validate(),
                        onSaved: (newLimit) {
                          if (newLimit?.isNotEmpty ?? false) {
                            guestsLimit = int.parse(newLimit!);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                isLoading
                    ? const SizedBox(
                        height: 40,
                        width: 40,
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: saveMeeting,
                        child: const Text('save meeting'),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.onSaved,
    this.onChanged,
    this.label,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  final String? label;
  final TextInputType keyboardType;
  final void Function(String?)? onChanged;
  final void Function(String?) onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: SizedBox(
        height: 55,
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: label,
          ),
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
