import 'package:flutter/material.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String asset;
  final String subtitle;
  final IconData iconData;
  final Function onTap;

  const ServiceTile(
      {Key key,
      this.title,
      this.asset,
      this.subtitle,
      this.iconData,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
          child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          height: 450.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                width: 310.0,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("lib/assets/images/$asset"),
                ),
              ),
              ListTile(
                leading: Icon(
                  iconData,
                  size: 30.0,
                  color: Colors.orange,
                ),
                title: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25.0),
                ),
                subtitle: Text(
                  subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
