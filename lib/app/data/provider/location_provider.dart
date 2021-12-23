import 'package:astrotak/app/api/api_client.dart';
import 'package:astrotak/app/data/models/request/location_request/location_request.dart';
import 'package:astrotak/app/data/models/response/location_response/location_response.dart';
import 'package:astrotak/app/utils/constants/urls.dart';

class LocationProvider {
  final _client = ApiClient();

  Future<LocationResponse> getLocation(LocationRequest request) async {
    final json = await _client.get(
      URLPaths.location,
      query: request.toJson(),
    );
    return LocationResponse.fromJson(json);
  }
}
