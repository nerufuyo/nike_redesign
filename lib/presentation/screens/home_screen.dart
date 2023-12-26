import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_redesign/common/config/static.dart';
import 'package:nike_redesign/common/config/theme.dart';
import 'package:nike_redesign/data/repository/repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AppStatic static = AppStatic();
  final AppTypography typography = AppTypography();
  final Repository repository = Repository();

  String? userName;

  @override
  void initState() {
    super.initState();
    initialState();
  }

  void initialState() async {
    await fetchData();
  }

  fetchData() async {
    final user = await repository.getUser();

    setState(() {
      userName = user.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hi!',
                        style: typography.headline2,
                      ),
                      Text(
                        userName ?? 'Loading...',
                        style: typography.headline4,
                      ),
                    ],
                  ),
                  const FaIcon(FontAwesomeIcons.safari),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
