import 'package:astrotak/app/data/models/response/astrologers_response/astrologer.dart';
import 'package:astrotak/app/data/models/response/error/error_response.dart';
import 'package:astrotak/app/data/provider/astrologer_provider.dart';
import 'package:astrotak/app/utils/constants/enums.dart';
import 'package:astrotak/app/utils/constants/strings.dart';
import 'package:astrotak/app/utils/toast/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _astrologerProvider = AstrologerProvider();
  final astrologers = List<Astrologer>.empty().obs;
  final filteredList = List<Astrologer>.empty().obs;
  final searchedList = List<Astrologer>.empty().obs;
  final astrologySkills = Strings.astrologySkills;
  final languages = Strings.astrologerLanguages;
  final sortingOrders = AstrologerSortingOrder.values;
  final _selectedSkills = Set<String>().obs;
  final _selectedLanguages = Set<String>().obs;

  final tempSelectedSkills = Set<String>().obs;
  final tempSelectedLanguages = Set<String>().obs;

  TextEditingController searchController = TextEditingController();

  final _query = ''.obs;
  String get query => this._query.value;
  set query(String value) => this._query.value = value;

  final _isVisibleSearchField = false.obs;
  bool get isVisibleSearchField => this._isVisibleSearchField.value;
  set isVisibleSearchField(bool value) =>
      this._isVisibleSearchField.value = value;

  final _selectedSortedOrder = AstrologerSortingOrder.experienceHighToLow.obs;
  AstrologerSortingOrder get selectedSortedOrder =>
      this._selectedSortedOrder.value;
  set selectedSortedOrder(AstrologerSortingOrder value) =>
      this._selectedSortedOrder.value = value;

  final _isFetchingAstrologers = true.obs;
  bool get isFetchingAstrologers => this._isFetchingAstrologers.value;
  set isFetchingAstrologers(bool value) =>
      this._isFetchingAstrologers.value = value;

  @override
  void onInit() {
    super.onInit();
    _configure();
  }

  void _configure() {
    _fetchAstrologers();
    listenOrder();
    debounce(
      _query,
      (_) => _didChangeQuery(),
      time: Duration(milliseconds: 500),
    );
  }

  Future<void> _fetchAstrologers() async {
    try {
      isFetchingAstrologers = true;
      final res = await _astrologerProvider.fetchAstrologers();
      astrologers.assignAll(res.data ?? []);
      filteredList.assignAll(res.data ?? []);
      updateListInSortedOrder();
      isFetchingAstrologers = false;
    } on ErrorResponse catch (e) {
      isFetchingAstrologers = false;
      CustomToast.showToast(e.message ?? ErrorMessages.somethingWentWrong);
    }
  }

  void listenOrder() {
    ever(_selectedSortedOrder, (_) {
      updateListInSortedOrder();
    });
  }

  void _didChangeQuery() {
    query = query.trim();
    final searchedAstrologers = filteredList.where((astrologer) {
      return (((astrologer.namePrefix?.toString().toLowerCase() ?? '') +
                  ' ' +
                  (astrologer.firstName?.toLowerCase() ?? '') +
                  ' ' +
                  (astrologer.lastName?.toLowerCase() ?? ''))
              .contains(query.toLowerCase()) ||
          (astrologer.languages
                  ?.where(
                    (language) => (language.name
                            ?.toLowerCase()
                            .contains(query.toLowerCase()) ??
                        false),
                  )
                  .toList()
                  .isNotEmpty ??
              false) ||
          (astrologer.skills
                  ?.where(
                    (skill) => (skill.name
                            ?.toLowerCase()
                            .contains(query.toLowerCase()) ??
                        false),
                  )
                  .toList()
                  .isNotEmpty ??
              false));
    }).toList();
    searchedList.assignAll(searchedAstrologers);
  }

  void onChangeSortBy(AstrologerSortingOrder? order) {
    selectedSortedOrder = order ?? selectedSortedOrder;
  }

  void onChangeQuery(String val) {
    query = val;
  }

  void clearQuery() {
    searchController.text = '';
    query = '';
  }

  void didTapSearch(BuildContext context) {
    query = '';
    searchController.text = '';
    isVisibleSearchField = !isVisibleSearchField;
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  String? getStringFromAstrologerSortingOrder(AstrologerSortingOrder order) {
    return astrologerSortingOrders.reverse?[order];
  }

  void _addSkill(String skill) {
    tempSelectedSkills.add(skill);
  }

  void _removeSkill(String skill) {
    tempSelectedSkills.remove(skill);
  }

  void _addLanguage(String language) {
    tempSelectedLanguages.add(language);
  }

  void _removeLanguage(String language) {
    tempSelectedLanguages.remove(language);
  }

  bool isSkillSelected(String skill) {
    return tempSelectedSkills.contains(skill);
  }

  bool isLanguageSelected(String language) {
    return tempSelectedLanguages.contains(language);
  }

  void resetAllFilters() {
    tempSelectedSkills.clear();
    tempSelectedLanguages.clear();
    _selectedSkills.clear();
    _selectedLanguages.clear();
    updateFilteredList();
  }

  void onSelectSkill(String skill) {
    isSkillSelected(skill) ? _removeSkill(skill) : _addSkill(skill);
  }

  void onSelectLanguage(String language) {
    isLanguageSelected(language)
        ? _removeLanguage(language)
        : _addLanguage(language);
  }

  void updateListInSortedOrder() {
    filteredList.sort((astrologer1, astrologer2) {
      switch (selectedSortedOrder) {
        case AstrologerSortingOrder.experienceHighToLow:
          return (astrologer2.experience ?? 0)
              .compareTo(astrologer1.experience ?? 0);
        case AstrologerSortingOrder.experienceLowToHigh:
          return (astrologer1.experience ?? 0)
              .compareTo(astrologer2.experience ?? 0);
        case AstrologerSortingOrder.priceHighToLow:
          return (astrologer2.minimumCallDurationCharges ?? 0)
              .compareTo(astrologer1.minimumCallDurationCharges ?? 0);
        case AstrologerSortingOrder.priceLowToHigh:
          return (astrologer1.minimumCallDurationCharges ?? 0)
              .compareTo(astrologer2.minimumCallDurationCharges ?? 0);
        default:
          return 1;
      }
    });
  }

  void updateFilteredList() {
    if (_selectedSkills.isEmpty && _selectedLanguages.isEmpty) {
      filteredList.assignAll(astrologers);
      updateListInSortedOrder();
      return;
    }
    List<Astrologer> filtered = [];

    if (_selectedSkills.isEmpty) {
      filtered = astrologers.where((astrologer) {
        return _selectedLanguages.every(
          (language) =>
              astrologer.languages?.any(
                (astroLanguage) =>
                    astroLanguage.name?.toLowerCase() == language.toLowerCase(),
              ) ??
              false,
        );
      }).toList();
    } else if (_selectedLanguages.isEmpty) {
      filtered = astrologers.where((astrologer) {
        return _selectedSkills.every(
          (skill) =>
              astrologer.skills?.any(
                (astroSkill) =>
                    astroSkill.name?.toLowerCase() == skill.toLowerCase(),
              ) ??
              false,
        );
      }).toList();
    } else {
      filtered = astrologers.where((astrologer) {
        return _selectedSkills.every(
          (skill) =>
              astrologer.skills?.any(
                (astroSkill) =>
                    astroSkill.name?.toLowerCase() == skill.toLowerCase(),
              ) ??
              false,
        );
      }).where((astrologer) {
        return _selectedLanguages.every(
          (language) =>
              astrologer.languages?.any(
                (astroLanguage) =>
                    astroLanguage.name?.toLowerCase() == language.toLowerCase(),
              ) ??
              false,
        );
      }).toList();
    }
    filteredList.assignAll(filtered);
    updateListInSortedOrder();
  }

  Future<void> onRefresh() async {
    _resetAllFields();
    await _fetchAstrologers();
  }

  void _resetAllFields() {
    astrologers.clear();
    filteredList.clear();
    searchedList.clear();
    _selectedSkills.clear();
    _selectedLanguages.clear();
    _clearTempFilters();
    searchController.text = '';
    query = '';
    isVisibleSearchField = false;
    selectedSortedOrder = AstrologerSortingOrder.experienceHighToLow;
  }

  bool isVisibleResetFilter() =>
      _selectedLanguages.isNotEmpty || _selectedSkills.isNotEmpty;

  void configureFilters() {
    _clearTempFilters();
    tempSelectedSkills.assignAll(_selectedSkills);
    tempSelectedLanguages.assignAll(_selectedLanguages);
  }

  void _clearTempFilters() {
    tempSelectedSkills.clear();
    tempSelectedLanguages.clear();
  }

  void applyFilters() {
    _selectedSkills.assignAll(tempSelectedSkills);
    _selectedLanguages.assignAll(tempSelectedLanguages);
    updateFilteredList();
  }
}
