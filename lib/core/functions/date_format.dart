import 'package:date_format/date_format.dart';

String dateToString({required DateTime date}) {
  String dateTime = formatDate(date, [yyyy, '/', mm, '/', dd]);
  return dateTime;
}
