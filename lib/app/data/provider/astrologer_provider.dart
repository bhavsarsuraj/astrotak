import 'package:astrotak/app/api/api_client.dart';
import 'package:astrotak/app/data/models/response/astrologers_response/astrologers_response.dart';
import 'package:astrotak/app/utils/constants/urls.dart';

class AstrologerProvider {
  final _client = ApiClient();

  Future<AstrologersResponse> fetchAstrologers() async {
    final json = await _client.get(URLPaths.astrologers);
    return AstrologersResponse.fromJson(json);
  }
}
