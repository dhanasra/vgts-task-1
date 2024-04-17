import 'package:flutter/material.dart';
import 'package:vgts_task_1/screens/fragments/home_fragment.dart';

import '../base/base_viewmodel.dart';

class DashboardViewModel extends BaseViewModel {
  final List bottomNavItems = [
    {'icon': Icons.home_rounded, 'label': 'Home'},
    {'icon': Icons.pie_chart_rounded, 'label': 'Portfolio'},
    {'icon': Icons.format_align_center_rounded, 'label': ''},
    {'icon': Icons.multiline_chart_rounded, 'label': 'Prices'},
    {'icon': Icons.settings_rounded, 'label': 'Settings'}
  ];


  List homeItems = [
    {
      "name": "Gold",
      "price": "22,265.64",
      "oz": "11.050",
      "percent": "0.97",
      "metalPrice": "1,999.00",
      "change": "-0.4",
      "color": const Color(0xFFedc849)
    },
    {
      "name": "Silver",
      "price": "0.00",
      "oz": "0.000",
      "percent": "0.0",
      "metalPrice": "26.20",
      "change": "-0.15",
      "color": const Color(0xFF787878)
    },
    {
      "name": "Platinum",
      "price": "0.00",
      "oz": "0.000",
      "percent": "0.0",
      "metalPrice": "1,102.30",
      "change": "-0.08",
      "color": const Color(0xFFbe70d8)
    }
  ];

  late List<Widget> pages;

  DashboardViewModel(){
    pages = [
      HomeFragment(items: homeItems)
    ];
  }
  
  @override
  void dispose() {
    
  }
}