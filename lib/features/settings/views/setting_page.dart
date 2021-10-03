import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/features/settings/setting.dart';

// ignore: must_be_immutable
class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  List<SettingOptionModel> settingOptionList = [
    SettingOptionModel(
      optionIcon: Icons.bookmark_border_outlined,
      optionTitle: 'Set price',
    ),
    SettingOptionModel(
      optionIcon: Icons.bookmark_border_outlined,
      optionTitle: 'Select intersets',
    ),
    SettingOptionModel(
      optionIcon: Icons.money_rounded,
      optionTitle: 'Earnings',
    ),
    SettingOptionModel(
      optionIcon: Icons.logout_outlined,
      optionTitle: 'Logout',
    ),
  ];

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => SettingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SettingPageTopWidget(),
            _SettingListOption(
              settingOptionList: settingOptionList,
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingListOption extends StatelessWidget {
  const _SettingListOption({
    Key? key,
    required this.settingOptionList,
  }) : super(key: key);

  final List<SettingOptionModel> settingOptionList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: settingOptionList.length,
        itemBuilder: (context, index) {
          return SettingsListRowWidget(
            settingOption: settingOptionList[index],
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
            height: 1.0,
          );
        },
      ),
    );
  }
}

class _SettingPageTopWidget extends StatelessWidget {
  const _SettingPageTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: ExactAssetImage('assets/user_icon.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          child: Text(
            'Jack Freestone',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
