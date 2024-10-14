import 'package:flutter/material.dart';
import 'package:flutter_web/Food%20Odering%20Website/Head/header.dart';
import 'package:flutter_web/Food%20Odering%20Website/Head/header_contain.dart';
import 'package:flutter_web/Food%20Odering%20Website/screen/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.pink[100],
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1233),
              child: Column(
                children: [
                  const Header(),
                  Responsive.isDesktop(context)
                      ? const HeaderContain()
                      : const MobileHeaderContain(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
