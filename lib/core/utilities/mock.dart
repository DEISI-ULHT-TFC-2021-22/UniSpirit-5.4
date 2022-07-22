import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';

final meet = MeetsModel(
  title: 'Study group',
  creator: 'User 7',
  isOnline: false,
  location: 'Campus 2nd floor, building 3',
  guestsLimit: 6,
  createdAt: DateTime.now(),
  meetingLink: 'https://zoom.io',
  meetingDate: DateTime.now().add(const Duration(days: 1)),
  meetingDescription: 'A short recap after class to share...',
  courseId: 'S7xKHbMSkakmXfEP3YMz',
);
