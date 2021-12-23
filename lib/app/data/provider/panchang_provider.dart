import 'package:astrotak/app/api/api_client.dart';
import 'package:astrotak/app/data/models/request/panchang_request/panchang_request.dart';
import 'package:astrotak/app/data/models/response/panchang_response/panchang_response.dart';
import 'package:astrotak/app/utils/constants/urls.dart';

class PanchangProvider {
  final _client = ApiClient();

  Future<PanchangResponse> getPanchang(PanchangRequest request) async {
    final json = await _client.post(
      URLPaths.panchang,
      data: request.toJson(),
    );
    return PanchangResponse.fromJson(json);
  }
}
