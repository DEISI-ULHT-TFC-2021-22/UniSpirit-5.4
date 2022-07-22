import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectunispiritfinalt/features/meets/data/model/meets_model.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/providers/meets_provider.dart';
import 'package:provider/provider.dart';

class MeetsDetailsScreen extends StatelessWidget {
  const MeetsDetailsScreen({Key? key, required this.meet}) : super(key: key);

  final MeetsModel meet;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/meets/meeting_placeholder.png',
                        height: 250,
                        width: double.infinity,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        meet.title ?? 'no title',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.purple,
                            ),
                      ),
                      const SizedBox(height: 5),
                      if (meet.createdAt != null)
                        Text(
                          'Created at: ${DateFormat.yMMMd().format(meet.createdAt!)}',
                        ),
                      const SizedBox(height: 5),
                      MeetingGuestsSection(meetingId: meet.id!),
                      const SizedBox(height: 10),
                      Text(
                        'About',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                      ),
                      if (meet.meetingDescription != null)
                        Text('${meet.meetingDescription}'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            MeetingLocation(meet: meet),
          ],
        ),
      ),
    );
  }
}

class MeetingGuestsSection extends StatelessWidget {
  const MeetingGuestsSection({
    Key? key,
    required this.meetingId,
  }) : super(key: key);

  final String meetingId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.read<MeetsProvider>().getMeetsGuests(meetingId),
      builder: (context, AsyncSnapshot<List<MeetsGuestModel>?> snapshot) {
        if (snapshot.data == null || snapshot.data!.isEmpty) {
          return const Text('no guests yet');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Text('loading guests...');
          case ConnectionState.active:
          case ConnectionState.none:
          case ConnectionState.done:
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: snapshot.data!.map((element) {
                return Text('${element.guestName}');
              }).toList(),
            );
        }
      },
    );
  }
}

class MeetingLocation extends StatelessWidget {
  const MeetingLocation({
    Key? key,
    required this.meet,
  }) : super(key: key);

  final MeetsModel meet;

  bool get meetingIsOnline {
    return meet.isOnline ?? true;
  }

  void leaveMeeting(BuildContext context) {
    context.read<MeetsProvider>().leaveMeet(
          meetId: meet.id!,
          guestUid: FirebaseAuth.instance.currentUser!.uid,
        );
  }

  void joinMeeting(BuildContext context, int? currentGuestsLength) {
    if (currentGuestsLength != null &&
        currentGuestsLength >= (meet.guestsLimit ?? 8)) {
      return;
    }
    context.read<MeetsProvider>().joinMeet(
          meetId: meet.id!,
          guestModel: MeetsGuestModel(
            guestUid: FirebaseAuth.instance.currentUser!.uid,
            guestName:
                FirebaseAuth.instance.currentUser?.displayName ?? 'guest 1',
          ),
        );
  }

  bool alreadyJoined(List<MeetsGuestModel>? guests) {
    try {
      final user = guests?.firstWhere((element) {
        return element.guestUid == FirebaseAuth.instance.currentUser!.uid;
      });
      if (user == null) return false;
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      color: Colors.purple[100],
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Row(
          children: [
            const SizedBox(width: 16),
            if (meet.createdAt != null)
              Text(
                'Meeting date: \n${DateFormat.yMMMd().format(meet.createdAt!)}',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            const Spacer(),
            StreamBuilder(
              stream: context.read<MeetsProvider>().getMeetsGuests(meet.id!),
              builder: (
                context,
                AsyncSnapshot<List<MeetsGuestModel>?> snapshot,
              ) {
                if (snapshot.data == null || snapshot.data!.isEmpty) {
                  return ElevatedButton(
                    onPressed: () => joinMeeting(
                      context,
                      snapshot.data?.length,
                    ),
                    child: const Text('Join meeting'),
                  );
                }
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Text('loading guests...');
                  case ConnectionState.active:
                  case ConnectionState.none:
                  case ConnectionState.done:
                    if (!alreadyJoined(snapshot.data)) {
                      return ElevatedButton(
                        onPressed: () => joinMeeting(
                          context,
                          snapshot.data?.length,
                        ),
                        child: const Text('Join meeting'),
                      );
                    } else {
                      return TextButton(
                        onPressed: () => leaveMeeting(context),
                        child: Text(
                          'leave meeting',
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                        ),
                      );
                    }
                }
              },
            ),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
