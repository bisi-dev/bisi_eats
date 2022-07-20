import '../core/app_core.dart';

import 'home.dart';
import 'map.dart';
import 'messages.dart';
import 'notifications.dart';
import 'orders.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedTab = 2;

  void onSelected(int index) {
    setState(() => _selectedTab = index);
  }

  static const List<Widget> _widgetOptions = [
    NotificationsWidget(),
    MapWidget(),
    HomeWidget(),
    OrdersWidget(),
    MessagesWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        iconSize: 20,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
        currentIndex: _selectedTab,
        onTap: onSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedTab == 0
                ? Icons.notifications
                : Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedTab == 1
                ? Icons.location_on
                : Icons.location_on_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedTab == 2 ? Icons.home : Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedTab == 3
                ? Icons.local_mall
                : Icons.local_mall_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedTab == 4 ? Icons.chat : Icons.chat_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}
