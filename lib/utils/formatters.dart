import 'package:intl/intl.dart';

class Formatters {
  static String formatNumber(double value) {
    return NumberFormat('#,##0.00', 'en_US').format(value);
  }

  static String formatCurrency(double value, String currency) {
    return '${formatNumber(value)} $currency';
  }

  static String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }

  static String formatDateShort(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatDateBengali(DateTime date) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(date);
  }

  static double parseDouble(String value) {
    try {
      return double.parse(value);
    } catch (e) {
      return 0.0;
    }
  }

  static int parseInt(String value) {
    try {
      return int.parse(value);
    } catch (e) {
      return 0;
    }
  }
}
