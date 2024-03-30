import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Jost'
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to see all reviews
                },
                child: Text('SEE ALL'),
              ),
            ],
          ),
        ),
        ReviewCard(
          name: 'William S. Cunningham',
          review: 'The Course is Very Good dolor sit amet, consectetur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo.',
          avatar: 'images/blankuser.png',
          rating: 4.5,
          likes: 578,
          timeAgo: '2 Weeks Ago',
        ),
        ReviewCard(
          name: 'Martha E. Thompson',
          review: 'The Course is Very Good dolor sit amet, consectetur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo.',
          avatar: 'images/blankuser.png',
          rating: 4.5,
          likes: 578,
          timeAgo: '2 Weeks Ago',
        ),
        // Add more ReviewCard widgets as needed
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final String avatar;
  final double rating;
  final int likes;
  final String timeAgo;

  const ReviewCard({
    Key? key,
    required this.name,
    required this.review,
    required this.avatar,
    required this.rating,
    required this.likes,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Text(
                            '$rating',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              review,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 8),
                Text('$likes'),
                Spacer(),
                Text(timeAgo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
