import 'package:flutter/material.dart';
import 'dart:core';
import '../home.dart';

class UserDetailsWidget extends StatelessWidget {
  final List<UserBasicInfoModel> profileDetails = [
    UserBasicInfoModel(
      icon: Icons.location_on_outlined,
      title: "From",
      value: "Australia",
    ),
    UserBasicInfoModel(
      icon: Icons.language,
      title: "Languages",
      value: "English",
    ),
    UserBasicInfoModel(
      icon: Icons.school,
      title: "Education",
      value: "LLB Sydney University",
    ),
    UserBasicInfoModel(
      icon: Icons.person,
      title: "Member since",
      value: "Apr 2021",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
        ),
        itemCount: profileDetails.length,
        itemBuilder: (context, index) {
          return _GridDataWidget(
            profileDetails: profileDetails,
            index: index,
          );
        },
      ),
    );
  }
}

class _GridDataWidget extends StatelessWidget {
  const _GridDataWidget({
    Key? key,
    required this.profileDetails,
    required this.index,
  }) : super(key: key);

  final List<UserBasicInfoModel> profileDetails;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          profileDetails[index].icon,
          size: 25,
          color: Colors.black,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profileDetails[index].title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Expanded(
                child: Text(
                  profileDetails[index].value,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
