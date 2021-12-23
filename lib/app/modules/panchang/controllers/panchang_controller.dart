import 'package:astrotak/app/data/models/request/location_request/location_request.dart';
import 'package:astrotak/app/data/models/request/panchang_request/panchang_request.dart';
import 'package:astrotak/app/data/models/response/error/error_response.dart';
import 'package:astrotak/app/data/models/response/location_response/datum.dart';
import 'package:astrotak/app/data/models/response/panchang_response/end_time.dart';
import 'package:astrotak/app/data/models/response/panchang_response/panchang.dart';
import 'package:astrotak/app/data/provider/location_provider.dart';
import 'package:astrotak/app/data/provider/panchang_provider.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/toast/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class PanchangController extends GetxController {
  final _locationProvider = LocationProvider();
  final _panchangProvider = PanchangProvider();

  final _selectedDate = DateTime.now().obs;
  DateTime get selectedDate => this._selectedDate.value;
  set selectedDate(DateTime value) => this._selectedDate.value = value;

  final _selectedPlaceId = ''.obs;
  String get selectedPlaceId => this._selectedPlaceId.value;
  set selectedPlaceId(String value) => this._selectedPlaceId.value = value;

  final _isFetchingPanchangDetails = false.obs;
  bool get isFetchingPanchangDetails => this._isFetchingPanchangDetails.value;
  set isFetchingPanchangDetails(bool value) =>
      this._isFetchingPanchangDetails.value = value;

  final _locationQuery = ''.obs;
  String get locationQuery => this._locationQuery.value;
  set locationQuery(String value) => this._locationQuery.value = value;

  TextEditingController locationController = TextEditingController();

  final suggestedLocations = List<Datum>.empty().obs;

  final panchang = Rx<Panchang?>(null);

  Future<List<Datum>> getSuggestedLocation(String inputPlace) async {
    try {
      final request = LocationRequest(inputPlace: inputPlace);
      final res = await _locationProvider.getLocation(request);
      return res.data ?? [];
    } on ErrorResponse catch (e) {
      CustomToast.showToast(e.message ?? ErrorMessages.somethingWentWrong);
      return [];
    }
  }

  void getPanchangDetails() async {
    if (selectedPlaceId.isEmpty) {
      CustomToast.showToast(
        Strings.pleaseSelectLocation,
        dismissOnTap: true,
        toastPosition: EasyLoadingToastPosition.center,
      );
      return;
    }
    panchang.value = null;
    try {
      isFetchingPanchangDetails = true;
      final request = PanchangRequest(
        day: selectedDate.day,
        month: selectedDate.month,
        year: selectedDate.year,
        placeId: selectedPlaceId,
      );
      final res = await _panchangProvider.getPanchang(request);
      if (res.data != null) {
        panchang(res.data!);
      }
      isFetchingPanchangDetails = false;
    } on ErrorResponse catch (e) {
      isFetchingPanchangDetails = false;
      CustomToast.showToast(e.message ?? ErrorMessages.somethingWentWrong);
    }
  }

  void onSelectLocation(Datum datum) {
    locationController.text = datum.placeName ?? '';
    locationQuery = datum.placeName ?? '';
    selectedPlaceId = datum.placeId ?? '';
    getPanchangDetails();
  }

  void onChangeLocation(String location) {
    locationQuery = location;
    if (location.isEmpty) {
      selectedPlaceId = '';
      panchang.value = null;
    }
  }

  String getEndTime(EndTime? time) {
    String endTime = "";
    if (time != null) {
      if (time.hour != null) {
        endTime = endTime + '${time.hour} hr ';
      }
      if (time.minute != null) {
        endTime = endTime + '${time.minute} min ';
      }
      if (time.second != null) {
        endTime = endTime + '${time.second} sec';
      }
    }
    return endTime;
  }

  void onSelectDate(DateTime date) {
    selectedDate = date;
    getPanchangDetails();
  }

  void onClearLocation() {
    locationController.text = '';
    selectedPlaceId = '';
    locationQuery = '';
    panchang.value = null;
  }
}
