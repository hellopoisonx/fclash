import 'dart:async';

import 'package:fclash/clash/core.dart';
import 'package:fclash/models/proxies/proxies.dart';
import 'package:fclash/providers/profiles/profiles.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'proxies.g.dart';

@riverpod
class ProxiesNotifier extends _$ProxiesNotifier {
  @override
  Future<PP> build() async {
    bool didDispose = false;
    ref.watch(profilesProvider);
    final alive = ref.keepAlive();
    final t =
        Timer.periodic(const Duration(minutes: 1), (_) => ref.invalidateSelf());
    ref.onDispose(() {
      didDispose = true;
      alive.close();
      t.cancel();
    });
    await Future.delayed(const Duration(milliseconds: 100));
    if (didDispose) {
      throw Exception("too much request, cancelling");
    }
    final all = await core.getAllProxies();
    final global = await core.getGlobal();
    final selectors = await core.getAllGroups();
    return PP.fromJson(selectors, global, all);
  }

  Future<void> testDelayForProxy(String proxy) async {
    await core.testDelayForProxy(proxy);
    ref.invalidateSelf();
  }

  Future<void> testDelayForSelector(String selector) async {
    await core.testDelayForSelector(selector);
    await core.testDelayForProxy(selector);
    ref.invalidateSelf();
  }

  Future<void> changeProxy(String proxy, String selector) async {
    await core.changeProxy(proxy, selector);
    ref.invalidateSelf();
  }
}
