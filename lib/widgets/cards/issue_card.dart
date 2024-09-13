import 'package:flutter/material.dart';

class IssueCard extends StatelessWidget {
  const IssueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF333333), // Background color #333333
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Avatar
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Replace with actual image URL
                  radius: 20,
                ),
                SizedBox(width: 8),
                // Texts
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fix All bugs',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Côte d\'Ivoire',
                      style: TextStyle(
                        color: Colors.grey, // Text color for location
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Time
            Text(
              '12:20',
              style: TextStyle(
                color: Colors.grey, // Text color for time
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
