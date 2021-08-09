import 'package:flutter/material.dart';

class PageRoutes extends StatelessWidget {
  static const nameRoute = '/pageroutes';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSatu(),
      initialRoute: '/pagesatu',
      routes: {
        PageSatu.nameRoute: (context) => PageSatu(),
        GalleryPage.nameRoute: (context) => GalleryPage(),
        PagePhoto.nameRoute: (context) => PagePhoto(),
      },
    );
  }
}

class PageSatu extends StatelessWidget {
  static const nameRoute = '\pagesatu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Routes"),
      ),
      body: Center(
        child: Text(
          "PAGE ROUTES",
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.nameRoute);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  static const nameRoute = '\pagegalery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Gallery Page",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "<< Back",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PagePhoto.nameRoute);
                  },
                  child: Text(
                    "next >>",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PagePhoto extends StatelessWidget {
  static const nameRoute = '\pagephoto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos Page"),
      ),
      body: Center(
        child: Text(
          "Photos Page",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
