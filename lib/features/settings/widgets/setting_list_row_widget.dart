import 'package:flutter/material.dart';
import 'package:user_profile/features/settings/setting.dart';

class SettingsListRowWidget extends StatelessWidget {
  final SettingOptionModel settingOption;

  const SettingsListRowWidget({
    Key? key,
    required this.settingOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        settingOption.optionIcon,
        color: Colors.black,
        size: 30,
      ),
      title: Text(
        settingOption.optionTitle,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 20,
      ),
      onTap: () {},
    );
  }
}
