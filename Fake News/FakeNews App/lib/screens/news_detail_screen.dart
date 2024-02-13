import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  final String headline;
  final String image;
  final String body;
  final String author;
  final DateTime date;
  final bool isRead;

  const NewsDetailScreen({
    required Key key,
    required this.headline,
    required this.image,
    required this.body,
    required this.author,
    required this.date,
    required this.isRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headline),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              headline,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text("By $author on ${date.toString().substring(0, 10)}",
                style: const TextStyle(fontSize: 12.0, color: Colors.grey)),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            Text(
              body,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
