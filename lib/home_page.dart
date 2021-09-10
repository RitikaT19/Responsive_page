import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive page"),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return Column(
                children: [
                  Container(
                    width: 320,
                    height: 180,
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.pink]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Text(
                    'Hey there, 👋\n\nCodex is an ecosystem of practical resource for deverlopers who want to \nbuild high-quality mobile apps.🚪 ',
                    style: TextStyle(fontSize: 22),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Container(
                    width: 320,
                    height: 180,
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.pink]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Text(
                    'Hey there, 👋\n\nCodex is an ecosystem of practical resource for deverlopers who want to \nbuild high-quality mobile apps.🚪 ',
                    style: TextStyle(fontSize: 22),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
