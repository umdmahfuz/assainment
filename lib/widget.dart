import 'package:bike_ride_sharing/style.dart';
import 'package:flutter/material.dart';

final styles = AppTextStyle();


Widget buildSectionHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: styles.sectionTitle),
        Text('View all', style: styles.viewAll),
      ],
    ),
  );
}


Widget buildNearbyUserItem(String imageUrl, String name) {
  return Container(
    width: 80,
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageUrl),
        ),
        const SizedBox(height: 8),
        Text(name, style: styles.nearbyUserName, overflow: TextOverflow.ellipsis),
      ],
    ),
  );
}
Widget buildDealItem(
    String imageUrl, String name, String price, String oldPrice, String discount) {
  return Container(
    width: 173,
    height: 260,
    margin: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 173,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Color(0xffE5E5E5),
            width: 1,),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Image.asset(imageUrl, fit:BoxFit.cover, height: 110,width: 173,),
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: styles.dealProductName, maxLines: 2, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 4),
        Row(
          children: [
            Text('\u20b9 $price', style: styles.dealPrice),
            const SizedBox(width: 8),
            Text('\u20b9 $oldPrice', style: styles.dealOldPrice),
          ],
        ),
        const SizedBox(height: 6),
        Text(discount, style: styles.dealDiscount),
        const SizedBox(height: 6),
        Row(
          children: [
            Image(image: AssetImage('images/star.png')),
             SizedBox(width: 6),
            Text('4.8 (212)', style: styles.rating), // Example rating
          ],
        )
      ],
    ),
  );
}
Widget buildEventItem(String imageUrl, String title,) {
  return Container(
    width: 144,
    margin: const EdgeInsets.only(right: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(imageUrl, height: 100, width: double.infinity, fit: BoxFit.cover),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image(image: AssetImage('images/Group.png')),
            )
          ],
        ),
        const SizedBox(height: 5),
        Center(child: Text(title, style: styles.eventTitle,)),
      ],
    ),
  );
}
Widget buildServiceItem(String imageUrl, String title) {
  return Container(
    width: 160,
    margin: const EdgeInsets.only(right: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imageUrl, height: 100, width: double.infinity, fit: BoxFit.cover),
        ),
        const SizedBox(height: 8),
        Text(title, style: styles.serviceTitle),
      ],
    ),
  );
}
Widget buildLeaderboardItem(String imageUrl, String rank, String name, String points, Color color, double height, {bool isWinner = false}) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(imageUrl),
        ),
      ),
      const SizedBox(height: 8),
      Container(
        height: height,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(rank, style: styles.leaderboardRank),
                const SizedBox(height: 4),
                Text(name, style: styles.leaderboardName),
                const SizedBox(height: 4),
                Text(points, style: styles.leaderboardPoints),
              ],
            ),
            if (isWinner)
              const Positioned(
                top: 10,
                right: 28,
                child: Icon(Icons.star, color: Colors.amber, size: 18),
              ),
          ],
        ),
      ),
    ],
  );
}
Widget buildRecommendationItem(String imageUrl, String title) {
  return Container(
    width: 100,
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(title, style: styles.nearbyUserName),
      ],
    ),
  );
}
Widget buildServicePackageItem(
    String imageUrl, String name, String price, String oldPrice, String discount) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imageUrl, fit:BoxFit.cover, height: 110, width: double.infinity,),
        ),
        const SizedBox(height: 8),
        Text(name, style: styles.dealProductName, maxLines: 2, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 4),
        Row(
          children: [
            Text('₹ $price', style: styles.dealPrice),
            const SizedBox(width: 8),
            Text('₹ $oldPrice', style: styles.dealOldPrice),
          ],
        ),
        const SizedBox(height: 6),
        Text(discount, style: styles.dealDiscount),
      ],
    );
}
Widget buildRecommendationItemcare(String imageUrl, String title) {
  final styles = AppTextStyle();
  return Container(
    width: 100,
    margin: const EdgeInsets.only(right: 12),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(title, style: styles.nearbyUserName, textAlign: TextAlign.center),
      ],
    ),
  );
}
Widget buildServicePackageItemcare(
    String imageUrl, String name, String price, String oldPrice, String discount) {
  final styles = AppTextStyle();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(imageUrl, fit: BoxFit.cover, height: 110, width: double.infinity),
      ),
      const SizedBox(height: 8),
      Text(name, style: styles.dealProductName, maxLines: 1, overflow: TextOverflow.ellipsis),
      const SizedBox(height: 4),
      Row(
        children: [
          Text('₹$price', style: styles.dealPrice),
          const SizedBox(width: 8),
          Text('₹$oldPrice', style: styles.dealOldPrice),
          const SizedBox(height: 6),
          Text(discount, style: styles.dealDiscount),
        ],
      ),
    ],
  );
}

