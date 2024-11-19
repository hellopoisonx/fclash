import 'package:fclash/models/traffic/traffic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:fclash/constants/constants.dart';

part 'profile.g.dart';
part 'profile.freezed.dart';

@Freezed(toJson: true, fromJson: true, equal: true, copyWith: true)
class Profile with _$Profile {
  const Profile._();
  const factory Profile({
    required String name,
    required Uri path,
    // subscription-userinfo
    int? totalTraffic,
    int? uploadTraffic,
    int? downloadTraffic,
    Uri? url,
    DateTime? expirationTime,
    //
  }) = _Profile;

  static final Profile defaultConfig = Profile(
    name: "config.yaml",
    path: Uri.file(p.join(Constants.homeDirPath.toFilePath(), "config.yaml")),
  );

  Traffic? get total =>
      totalTraffic != null ? Traffic.fromByte(byte: totalTraffic!) : null;

  Traffic? get upload =>
      uploadTraffic != null ? Traffic.fromByte(byte: uploadTraffic!) : null;

  Traffic? get download =>
      downloadTraffic != null ? Traffic.fromByte(byte: downloadTraffic!) : null;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
