import 'package:fclash/models/profiles/profile.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key, required this.profile});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    Profile p = profile.copyWith();
    final TextEditingController nameController =
        TextEditingController(text: p.name);
    final TextEditingController urlController =
        TextEditingController(text: p.url.toString());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check_rounded),
            onPressed: () {
              final newName = nameController.text.trim();
              final newUrl = urlController.text.trim();
              if (newName.isNotEmpty && newName != profile.name) {
                p = p.copyWith(name: newName);
              }
              if (newUrl.isNotEmpty && newUrl != profile.url.toString()) {
                p = p.copyWith(url: Uri.parse(newUrl));
              }
              if (p == profile) {
                Navigator.of(context).pop(null);
                return;
              }
              Navigator.of(context).pop(p);
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
                labelText: "Name", border: OutlineInputBorder()),
          ),
          const Divider(),
          TextField(
            controller: urlController,
            decoration: const InputDecoration(
                labelText: "Url", border: OutlineInputBorder()),
          ),
          const Divider(),
          ListTile(
            title: const Text("Upload"),
            subtitle: Text(profile.upload.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text("Download"),
            subtitle: Text(profile.download.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text("Total"),
            subtitle: Text(profile.total.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text("Expire"),
            subtitle: Text(profile.expirationTime?.toIso8601String() ?? "null"),
          ),
        ],
      ),
    );
  }
}
