import 'dart:convert';

import 'package:fclash/clash/core.dart';
import 'package:fclash/models/configs/configs.dart';
import 'package:fclash/prefs/prefs.dart';
import 'package:fclash/providers/profiles/profiles.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'configs.g.dart';

@Riverpod(dependencies: [Profiles])
class ClashConfigsNotifier extends _$ClashConfigsNotifier {
  @override
  Future<Configs> build() async {
    ref.listen(profilesProvider, (_, __) {
      ref.invalidateSelf();
    });
    return Configs.fromJson(await core.getConfigs());
  }

  Future<void> patchConfig(Function(Configs cfg) callback) async {
    final prev = await future;
    final cp = prev.copyWith();
    callback(cp);
    await core.patchConfig(cp.toJson());
    Prefs.setConfigs(jsonEncode(cp.toJson()));
    state = AsyncValue.data(cp);
  }

  Future<void> updateTun(Function(Tun tun) callback) async {
    final prev = await future;
    final t = prev.tun?.copyWith() ?? Tun();
    callback(t);
    final n = prev.copyWith(tun: t);
    await core.patchConfig(n.toJson());
    Prefs.setConfigs(jsonEncode(n.toJson()));
    state = AsyncValue.data(n);
  }

  Future<void> updateProxyMode(ProxyMode m) async {
    final prev = await future;
    final n = prev.copyWith(mode: m);
    await core.patchConfig(n.toJson());
    Prefs.setConfigs(jsonEncode(n.toJson()));
    state = AsyncValue.data(n);
  }
}
