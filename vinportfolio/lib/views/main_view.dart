import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/responsive.dart';
import 'package:vinportfolio/widgets/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                'Vinay Portfolio',
                style: TextStyle(color: buttonColor),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: buttonColor,
                  ),
                ),
              ),
            ),
      drawer: SideMenu(),
      extendBody: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
