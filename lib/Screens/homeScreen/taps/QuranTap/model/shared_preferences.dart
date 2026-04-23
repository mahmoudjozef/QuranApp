
import 'package:shared_preferences/shared_preferences.dart';

class sharedPrefKyes {
  static const String mostRecent = 'mostRecent';
}

Future<void> saveListSura(int index) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentList =
      prefs.getStringList(sharedPrefKyes.mostRecent) ?? [];
  if (mostRecentList.contains('$index')) {
    mostRecentList.remove('$index');
    mostRecentList.add('$index');
  } else {
    mostRecentList.add('$index');
  }
  if (mostRecentList.length > 5) {
    mostRecentList.removeAt(0);
  }
  await prefs.setStringList(sharedPrefKyes.mostRecent, mostRecentList);
}

Future<List<int>> getListSura() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentListAsString =
      prefs.getStringList(sharedPrefKyes.mostRecent) ?? [];
  List<int> mostRecentListAsint = mostRecentListAsString
      .map((e) => int.parse(e))
      .toList();
  return mostRecentListAsint.reversed.toList();
}
