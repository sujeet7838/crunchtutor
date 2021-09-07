import 'package:crunchtutor/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  static Color darkBluebtn = Color(0xff5d95fd);
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media-exp3.licdn.com/dms/image/C4D03AQFYyjbabD_XFA/profile-displayphoto-shrink_200_200/0/1616567326032?e=1630540800&v=beta&t=rPd7snXfz7GiE-T3P8JDPfPRgqCHYmVQZh-W-7PSM78";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Column(
                
                children: [
                  UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Sujeet"),
                    accountEmail: Text("sujeet8788@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/dashboard.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Dashboard",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              onTap: () {
                print("Dashboard");
                Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/profile.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Edit Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              onTap: () {
                ///  print("Dashboard");
                Navigator.pushReplacementNamed(
                    context, MyRoutes.editprofileRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/past-session.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Past session",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              onTap: () {
                print("Past session");
                Navigator.pushReplacementNamed(
                    context, MyRoutes.pastsessionRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/progress_management.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Progress Management",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              onTap: () {
                print("Progress Management");
                Navigator.pushReplacementNamed(
                    context, MyRoutes.progressmanagmentRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/faqs.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "FAQs",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              onTap: () {
                print("FAQs");
                Navigator.pushReplacementNamed(context, MyRoutes.faqRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/payment_options.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Payment Option",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
                 onTap: () {
                print("Payment Option");
                 Navigator.pushReplacementNamed(context, MyRoutes.paymentRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/subscription.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Subscription",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
                 onTap: () {
                print("Subscription");
                 Navigator.pushReplacementNamed(context, MyRoutes.subcripationRoute);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/logout.png",
                fit: BoxFit.cover,
                height: 25,
                width: 25,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
                  onTap: () {
                print("Logout");
                 Navigator.pushReplacementNamed(context, MyRoutes.loginRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
