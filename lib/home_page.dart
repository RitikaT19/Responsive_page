import 'package:flutter/material.dart';
import 'responsive_helper.dart';

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
        child: ResponsiveWidget(
          mobile: Column(
            children: [
              buildBannerSlider(),
              buildTitleText(),
            ],
          ),
          tab: Row(
            children: [
              buildBannerSlider(),
              SizedBox(
                width: 24,
              ),
              Expanded(child: buildTitleText()),
            ],
          ),
        ),
      ),
    );
  }

  Text buildTitleText() {
    return Text(
      'Hey there, 👋\n\nCodex is an ecosystem of practical resource for deverlopers who want to \nbuild high-quality mobile apps.🚪 ',
      style: TextStyle(fontSize: 22),
    );
  }

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
