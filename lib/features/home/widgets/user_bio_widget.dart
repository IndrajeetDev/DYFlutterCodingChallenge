import 'package:flutter/material.dart';

class UserBioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: const [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Full Bio",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'All aspects of consumer internet and software. Focus is \non product development, innovation, business strategy, '
            '\nand finance, but includes general management, \n operations, business operations, '
            'businsess develpment, \ntalent management',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
