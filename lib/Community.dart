import 'package:bike_ride_sharing/style.dart';
import 'package:bike_ride_sharing/widget.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = AppTextStyle();
    const Color primaryColor = Color(0xff584CF4);

    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: TabBar(
            //isScrollable: true,
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: primaryColor,
            labelStyle: styles.tabBarLabel,

            tabs: const [
              Tab(text: 'Explore'),
              Tab(text: 'Trips'),
              Tab(text: 'Discussion'),
              Tab(text: 'Events'),
              Tab(text: 'More'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              buildSectionHeader('Leaderboard'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  padding: const EdgeInsets.all(21.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4E2FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [

                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          buildLeaderboardItem('images/user1.png', '2', 'Kavya',
                              '420 PTS', Color(0xff584CF4), 92),
                          buildLeaderboardItem('images/user2.png', '1', 'Ankit',
                              '600 PTS',Color(0xff584CF4), 114),
                          buildLeaderboardItem('images/user3.png', '3', 'Neelam',
                              '360 PTS', Color(0xff584cf4).withOpacity(1), 89),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                  ],
                ),
              ),
              const SizedBox(height: 16),
              buildSectionHeader('Upcoming Events'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    buildEventItem('images/event1.png', 'Shimla to Manali'),
                    buildEventItem('images/event2.png', 'Goa to Gujarat'),
                    buildEventItem('images/event3.png', 'Kashmir'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
