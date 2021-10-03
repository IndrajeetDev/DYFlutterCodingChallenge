import 'package:flutter/material.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserBasicInfoWidget(),
              UserPersonalInfoWidget(),
              UserDetailsWidget(),
              UserBioWidget()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_outlined),
            label: "Questions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
