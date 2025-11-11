import 'package:bike_ride_sharing/style.dart';
import 'package:bike_ride_sharing/widget.dart';
import 'package:flutter/material.dart';

class Care extends StatelessWidget {
  const Care({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = AppTextStyle();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Bike Name', style: styles.sectionTitle),
            Text('Change', style: styles.viewAll),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            buildSectionHeader('Care Recommendations'),
            SizedBox(
              height: 120, // Provide a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildRecommendationItemcare('images/spark_plug.png', 'Spark Plug'),
                  buildRecommendationItemcare('images/clutch_shoe.png', 'Clutch Shoe'),
                  buildRecommendationItemcare('images/hose_fuel.png', 'Hose Fuel'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            buildSectionHeader('Buy Service Packages'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 1,
                children: [
                  buildServicePackageItemcare('images/service1.png', 'Annual Maintenance',
                      '900', '1,000', '10% Off'),
                  buildServicePackageItemcare('images/service2.png', 'Teflon Coating',
                      '1350', '1500', '10% Off'),
                  buildServicePackageItemcare('images/service1.png', 'Annual Maintenance',
                      '900', '1,000', '10% Off'),
                  buildServicePackageItemcare('images/service2.png', 'Teflon Coating',
                      '1350', '1500', '10% Off'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}