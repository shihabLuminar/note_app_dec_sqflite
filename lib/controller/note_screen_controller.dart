import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteScreenController {
  static List<Map> notesList = [];
  static String? selectedCategory; // varible for selected category
  static const List<String> categories = [
    "Personal",
    "Professional",
    "Financial",
    "Educational",
  ];

  static Future<String> onDateSelection(BuildContext context) async {
    var selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    print(selectedDate);

    // format date
    if (selectedDate != null) {
      String formatedDate = DateFormat("dd/MM/yyyy").format(selectedDate);
      print(formatedDate);
      return formatedDate;
    }

    return "";
  }

  static void onCategorySelection(String? value) {
    selectedCategory = value;
  }

  static void addNote({
    required String title,
    required String des,
    required String date,
  }) {
    Map note = {
      "title": title,
      "des": des,
      "date": date,
      "category": selectedCategory,
    };

    notesList.add(note);
  }
}
