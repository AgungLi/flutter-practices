import 'package:flutter/material.dart';

class PageFlexibelExpended extends StatelessWidget {
  static const nameRoute = '\pageflexibleExpended';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expended"),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.blueAccent,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 100,
                    color: Colors.blueAccent,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 100,
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
