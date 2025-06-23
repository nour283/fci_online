import 'package:flutter/material.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/account_popup.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/ai_screen.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/books_home_page.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/contact_screen.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/course_screen.dart';
import 'package:tadrib_hub/presentation/Screens/Layout/pages/home_screen.dart';
class LayoutProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  
  int get selectedIndex => _selectedIndex;

  final List<Widget> screens = [
    HomeScreen(),
    CoursesScreen(),
    AiScreen(),
    ContactFormScreen(),
    const AccountPopup(
      userName: "nour mohamed",
      userEmail: "ahmed@example.com",
    ),
    BooksHomePage(),
  ];

  void changeBtnNav(int index) {
    if (index >= 0 && index < screens.length) {
      _selectedIndex = index;
      notifyListeners();
    } else {
      debugPrint('Invalid index: $index - Max allowed: ${screens.length - 1}');
      _selectedIndex = 0; 
      notifyListeners();
    }
  }
}