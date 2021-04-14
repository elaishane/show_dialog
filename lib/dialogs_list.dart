import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogs List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Alert Dialog"),
                  content: Text("You can press Ok or cancel to go back"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Ok"),
                    ),
                  ],
                ),
              ),
              child: Text("Material Alert Dialog"),
            ),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
              onPressed: () => showCupertinoDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => CupertinoAlertDialog(
                  title: Text("Cupertino Alert Dialog"),
                  content: Text("You can press Ok or cancel to go back"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Ok"),
                    ),
                  ],
                ),
              ),
              child: Text("Cupertino Alert Dialog"),
            ),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
              onPressed: () => Platform.isIOS
                  ? showCupertinoDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text("Cupertino Alert Dialog"),
                        content: Text("You can press Ok or cancel to go back"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Ok"),
                          ),
                        ],
                      ),
                    )
                  : showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Alert Dialog"),
                        content: Text("You can press Ok or cancel to go back"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Ok"),
                          ),
                        ],
                      ),
                    ),
              child: Text("Platform Alert Dialog"),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
