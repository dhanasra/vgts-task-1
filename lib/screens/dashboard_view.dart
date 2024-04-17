import 'package:flutter/material.dart';
import 'package:vgts_task_1/screens/dashboard_viewmodel.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  late DashboardViewModel _viewModel;

  @override
  void initState() {
    _viewModel = DashboardViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _viewModel.pages,
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: _viewModel.bottomNavItems.map((e) => 
              BottomNavigationBarItem(
                icon: Icon(e['icon']),
                label: e['label'],
              )
            ).toList(),
          ),
          Positioned(
            child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: const Icon(Icons.format_align_center, color: Colors.white),
          ))
        ],
      ),
    );
  }
}