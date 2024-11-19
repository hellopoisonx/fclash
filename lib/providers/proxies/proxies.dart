import 'dart:async';

import 'package:fclash/clash/core.dart';
import 'package:fclash/models/proxies/proxies.dart';
import 'package:fclash/providers/configs/configs.dart';
import 'package:fclash/models/configs/configs.dart' as config;
import 'package:fclash/providers/profiles/profiles.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'proxies.g.dart';

@Riverpod(dependencies: [Profiles])
class ProxiesNotifier extends _$ProxiesNotifier {
  @override
  Future<Proxy> build() async {
    ref.listen(profilesProvider, (_, __) {
      ref.invalidateSelf();
    });
    final mode = await ref.watch(clashConfigsNotifierProvider
        .selectAsync((conf) => conf.mode ?? config.ProxyMode.rule));
    final alive = ref.keepAlive();
    ref.onDispose(alive.close);
    final all = await core.getAllProxies();
    return switch (mode) {
      config.ProxyMode.global => Global.fromJson(all),
      config.ProxyMode.rule => Rule.fromJson(all),
      config.ProxyMode.direct => const Direct(),
    };
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
