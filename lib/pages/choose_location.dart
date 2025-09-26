import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // simulate network rew for username
    String username = await Future.delayed(const Duration(seconds: 3), (){
      return 'yoshi';
    });

    // simulate network rew for username
    String bio = await Future.delayed(const Duration(seconds: 2), (){
      return 'vega, musician & egg colector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('sawadikap');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
    );
  }
}
