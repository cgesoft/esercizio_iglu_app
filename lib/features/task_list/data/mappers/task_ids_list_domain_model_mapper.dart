import '../../../../core/functions/functions.dart';

class TaskIdsListMapper implements Function1<List<String>?, List<String>> {
  @override
  List<String> call(List<String>? taskIdsList) {
    if (taskIdsList != null) {
      return taskIdsList;
    } else {
      return [];
    }
  }
}
