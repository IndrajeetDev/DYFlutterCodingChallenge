import 'package:flutter/material.dart';
import 'package:user_profile/features/settings/views/setting_page.dart';

class UserBasicInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _ScreenHeaderWidget(),
          _ProfileImageWidget(),
          const SizedBox(height: 20.0),
          _EditButtonWidget(),
          const SizedBox(height: 20.0),
          _UserIntroWidget()
        ],
      ),
    );
  }
}

class _UserIntroWidget extends StatelessWidget {
  const _UserIntroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Entrepreneur \nInvestor in Uber, Snap, Airbnb \nPassion for scaling online marketplaces'
        '\n#Entreprenuership #startups #marketpaces',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}

class _EditButtonWidget extends StatelessWidget {
  const _EditButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => print("edit profile"),
        child: const Text("Edit Profile"),
      ),
    );
  }
}

class _ProfileImageWidget extends StatelessWidget {
  const _ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: ExactAssetImage('assets/user_icon.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _ScreenHeaderWidget extends StatelessWidget {
  const _ScreenHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.settings_outlined),
            color: Colors.black,
            iconSize: 30,
            onPressed: () =>
                Navigator.of(context).push<void>(SettingPage.route()),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 12.0),
            child: const Text(
              'Jack Freestone',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
