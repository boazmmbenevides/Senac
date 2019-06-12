import "package:flutter/material.dart";

void main() {
  runApp(
      new Material(
          color: Colors.purple,
          child: new Center(
            child: new Text("Hello World",
              textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 40,
                  color: Colors.limeAccent
              ),
            ),
          )
      )
  ); //RunnApp
}
