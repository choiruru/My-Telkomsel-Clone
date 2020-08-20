import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  int _selectedIndex = 0;

  get selectedIndex => _selectedIndex;

  void setSelected(int selected) {
    _selectedIndex = selected;
    notifyListeners();
  }
}
