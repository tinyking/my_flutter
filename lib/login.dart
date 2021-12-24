import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _MainView(),
      ),
    );
  }
}

class _MainView extends StatelessWidget {

  void _login(BuildContext context) {
    // Navigator.of(context).restorablePushNamed();
  }
  @override
  Widget build(BuildContext context) {
    final desktopMaxWidth = 400.0 + 100.0;
    List<Widget> listViewChildren = [

    ];
    return Column(
      children: [
        _TopBar(),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: ListView(
              restorationId: 'login_list_view',
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: listViewChildren,
            ),
          ),
        )
      ],
    );
  }
}

class _TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const spacing = SizedBox(width: 30,);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: const [
          // ExcludeSemantics(
          //   child: SizedBox(
          //     height: 80,
          //     child: FadeinImageP,
          //   ),
          // )
          spacing,
          Text("Rally")
        ],
      ),
    );
  }

}