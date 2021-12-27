import 'package:flutter/material.dart';

import 'layout/image_placeholder.dart';

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
    List<Widget> listViewChildren = [
      _UsernameInput(),
      _PasswordInput()
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
    const spacing = SizedBox(
      width: 30,
    );
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
          Text(
            "Rally",

          )
        ],
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  final double maxWidth = 400;
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: TextField(
          textInputAction: TextInputAction.next,
          controller: usernameController,
          decoration: const InputDecoration(
            labelText: "用户名",
          ),
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  final double maxWidth = 400;
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: "密码",
          ),
          obscureText: true,
        ),
      ),
    );
  }
}
// class _SmallLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.symmetric(vertical: 64),
//       child: SizedBox(
//         height: 160,
//         child: ExcludeSemantics(
//           child: FadeInImagePlaceholder(
//             image: AssetImage('logo.png', package: 'rally_assets'),
//             placeholder: SizedBox.shrink(),
//           ),
//         ),
//       ),
//     );
//   }

// }
