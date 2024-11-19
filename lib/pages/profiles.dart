import 'package:fclash/constants/constants.dart';
import 'package:fclash/models/profiles/profile.dart';
import 'package:fclash/pages/profile_detail.dart';
import 'package:fclash/providers/profiles/profiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilesPage extends ConsumerStatefulWidget {
  const ProfilesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilesPageState();
}

class _ProfilesPageState extends ConsumerState<ProfilesPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final profiles = ref.watch(profilesProvider);
    return Scaffold(
      appBar: AppBar(
        bottom: isLoading
            ? const PreferredSize(
                preferredSize: Size.fromHeight(5),
                child: LinearProgressIndicator())
            : null,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () async {
              try {
                await ref.read(profilesProvider.notifier).importFromLocal();
              } catch (e) {
                _showErrDialog(context, e);
              }
            },
            child: const Text("Local"),
          ),
          TextButton(
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    final controller = TextEditingController();
                    return AlertDialog(
                      title: const Text("Import From URL"),
                      content: TextField(
                        controller: controller,
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.check_rounded),
                          onPressed: () async {
                            Navigator.of(context).pop();
                            setState(() => isLoading = true);
                            try {
                              await ref
                                  .read(profilesProvider.notifier)
                                  .importFromURL(Uri.parse(controller.text));
                              setState(() => isLoading = false);
                            } catch (e) {
                              setState(() => isLoading = false);
                              _showErrDialog(context, e);
                            }
                          },
                        )
                      ],
                    );
                  });
            },
            child: const Text("Url"),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 270,
          mainAxisExtent: 90,
        ),
        itemCount: profiles.all.length,
        itemBuilder: (context, idx) {
          final profile = profiles.all.values.toList()[idx];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            decoration: BoxDecoration(
              boxShadow: [
                profile.path == Constants.configPath
                    ? BoxShadow(
                        blurRadius: 5,
                        color: Theme.of(context).colorScheme.primaryContainer,
                      )
                    : const BoxShadow(blurRadius: 2)
              ],
              borderRadius: BorderRadius.circular(20),
              color: profile.path != Constants.configPath
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.tertiaryContainer,
            ),
            child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: IconButton(
                  iconSize: 18,
                  icon: const Icon(Icons.details_rounded),
                  onPressed: () async {
                    final Profile? newProifle = await Navigator.push<Profile>(
                        context, MaterialPageRoute<Profile>(builder: (context) {
                      return ProfileDetailPage(profile: profile);
                    }));
                    if (newProifle != null) {
                      ref
                          .read(profilesProvider.notifier)
                          .addProfile(newProifle);
                    }
                  },
                ),
                trailing: IconButton(
                  iconSize: 18,
                  icon: const Icon(Icons.delete_rounded),
                  onPressed: () => ref
                      .read(profilesProvider.notifier)
                      .deleteProfile(profile),
                ),
                onTap: profile.path == Constants.configPath
                    ? null
                    : () async {
                        try {
                          await ref
                              .read(profilesProvider.notifier)
                              .switchProfile(profile);
                        } catch (e) {
                          _showErrDialog(context, e);
                        }
                      },
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        profile.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    if (profile.path == Constants.configPath)
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 5,
                        height: 5,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                  ],
                ),
                subtitle: Text(
                  profile.path.toFilePath(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          );
        },
      ),
    );
  }

  Future<dynamic> _showErrDialog(BuildContext context, Object e) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Error"),
            content: Text(e.toString()),
            actions: [
              IconButton(
                  icon: const Icon(Icons.exit_to_app_rounded),
                  onPressed: Navigator.of(context).pop)
            ],
          );
        });
  }
}
