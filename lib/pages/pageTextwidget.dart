import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class PageTextwidget extends StatelessWidget {
  static const nameRoute = "\pagetextwidget";
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widge Text"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'crashlanding',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'crashlanding',
                fontWeight: FontWeight.w700,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.red
                  ..strokeWidth = 1,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.purple,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(3, 1),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                color: Colors.green,
                wordSpacing: 26,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              faker.lorem.sentence(),
              maxLines: 2,
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 26,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              child: Text(
                "This text\n has some\n      new lines",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
