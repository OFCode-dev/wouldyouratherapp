import '../models/result_profile.dart';

class ShareTextBuilder {
  const ShareTextBuilder();

  String build(ResultProfile profile) {
    return '${profile.shareText}\n\nBu mu, O mu?';
  }
}
