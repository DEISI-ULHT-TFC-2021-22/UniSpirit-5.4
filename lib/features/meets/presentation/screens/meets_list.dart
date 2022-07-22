import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectunispiritfinalt/core/widgets/custom_container.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/providers/meets_provider.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/screens/meets_details.dart';
import 'package:provider/provider.dart';

class MeetsListScreen extends StatelessWidget {
  const MeetsListScreen({
    Key? key,
    required this.courseId,
  }) : super(key: key);

  final String courseId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<MeetsProvider>(
          builder: (context, MeetsProvider provider, _) {
            return StreamBuilder(
              stream: provider.getMeets(courseId),
              builder: (context, AsyncSnapshot<List<MeetsModel>?> snapshot) {
                if (snapshot.data == null || snapshot.data!.isEmpty) {
                  return const Center(child: Text('no data'));
                }
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());
                  case ConnectionState.active:
                  case ConnectionState.none:
                  case ConnectionState.done:
                    return ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        return MeetsItem(
                          key: Key(snapshot.data![index].id!),
                          meet: snapshot.data![index],
                        );
                      },
                    );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class MeetsItem extends StatelessWidget {
  const MeetsItem({Key? key, required this.meet}) : super(key: key);

  final MeetsModel meet;

  void navigateToMeetDetails(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return MeetsDetailsScreen(meet: meet);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToMeetDetails(context),
      child: CustomContainer(
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.1),
          )
        ],
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        meet.title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(meet.createdAt!),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      (meet.isOnline ?? false) ? 'Online' : 'In person',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  'assets/meets/meeting_placeholder.png',
                  fit: BoxFit.cover,
                  width: 140,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
