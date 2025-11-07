import 'package:bike_ride_sharing/Community.dart';
import 'package:bike_ride_sharing/care.dart';
import 'package:bike_ride_sharing/widget.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // Main Home Page Content
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionHeader('Nearby Users'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                buildNearbyUserItem('images/user1.png', 'Ankita'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user2.png', 'Pankaj'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user3.png', 'Manish'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user4.png', 'Suresh'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user5.png', 'Ankur'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user6.png', 'Deepesh'),
                const SizedBox(width: 16),
                buildNearbyUserItem('images/user4.png', 'Suresh'),
              ],
            ),
          ),
          buildSectionHeader('Deals of the Day'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                buildDealItem('images/helmet1.png', 'Racing Dual Visor Helmet',
                    '4,079', '5,099', '20% Off'),
                buildDealItem('images/helmet2.png', 'Aerodynamic Helmet',
                    '2,799', '3,499', '20% Off'),buildDealItem('images/helmet1.png', 'Racing Dual Visor Helmet',
                    '4,079', '5,099', '20% Off'),
                buildDealItem('images/helmet2.png', 'Aerodynamic Helmet',
                    '2,799', '3,499', '20% Off'),buildDealItem('images/helmet1.png', 'Racing Dual Visor Helmet',
                    '4,079', '5,099', '20% Off'),
                buildDealItem('images/helmet2.png', 'Aerodynamic Helmet',
                    '2,799', '3,499', '20% Off'),
              ],
            ),
          ),
          buildSectionHeader('Upcoming Events'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                buildEventItem('images/event1.png', 'Shimla to Manali'),
                buildEventItem('images/event2.png', 'Goa to Gujarat'),
                buildEventItem('images/event3.png', 'Kashmir'),
                buildEventItem('images/event1.png', 'Shimla to Manali'),
                buildEventItem('images/event2.png', 'Goa to Gujarat'),
                buildEventItem('images/event1.png', 'Shimla to Manali'),
                buildEventItem('images/event2.png', 'Goa to Gujarat'),
              ],
            ),
          ),
          buildSectionHeader('Buy Service Packages'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                buildServiceItem(
                    'images/service1.png', 'Annual Maintenance'),
                const SizedBox(width: 16),
                buildServiceItem('images/service2.png', 'Teflon Coating'),
                buildServiceItem(
                    'images/service1.png', 'Annual Maintenance'),
                const SizedBox(width: 16),
                buildServiceItem(
                    'images/service1.png', 'Annual Maintenance'),
                const SizedBox(width: 16),
                buildServiceItem(
                    'images/service1.png', 'Annual Maintenance'),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    ),
    const Center(
      child: Text('Products Page'),
    ),
   Care(),

    const Center(
      child: Text('Shop Page'),
    ),

     Community(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xff584CF4);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        actions: [
          const Icon(Icons.search, color: Colors.white),
          const SizedBox(width: 16),
          const Icon(Icons.shopping_cart, color: Colors.white),
          const SizedBox(width: 16),
          const Icon(Icons.favorite_border, color: Colors.white),
          const SizedBox(width: 16),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/user1.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ankita',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'ankita@example.com',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Profile'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.directions_bike),
              title: const Text('My Rides'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payments'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('images/HomeIcon.png', color: Colors.grey),
            activeIcon: Image.asset('images/HomeIcon.png', color: primaryColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/ProductIcon.png', color: Colors.grey),
            activeIcon: Image.asset('images/ProductIcon.png', color: primaryColor),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/CareIcon.png', color: Colors.grey),
            activeIcon: Image.asset('images/CareIcon.png', color: primaryColor),
            label: 'Care',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/cartIcon.png', color: Colors.grey),
            activeIcon: Image.asset('images/cartIcon.png', color: primaryColor),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/CommunityIcon.png', color: Colors.grey),
            activeIcon: Image.asset('images/CommunityIcon.png', color: primaryColor),
            label: 'Community',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        unselectedLabelStyle: AppTextStyle().navagationText,
        selectedLabelStyle: AppTextStyle().navagationText.copyWith(color: primaryColor),
      ),
    );
  }
}
