import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_web/controller/mobile_header_controller.dart';
import 'package:get/get.dart';

class HeaderContain extends StatelessWidget {
  const HeaderContain({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MobileHeaderController());

    final hoveredTransform = Matrix4.identity()..scale(1.1);

    return Column(
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            const Expanded(flex: 3, child: HeaderBody()), // Left side content
            Expanded(
              flex: 2,
              child: MouseRegion(
                onEnter: (_) => controller.onHover(true),
                onExit: (_) => controller.onHover(false),
                child: Obx(() {
                  final transform = controller.isHovered.value
                      ? hoveredTransform
                      : Matrix4.identity();

                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 100),
                    transform: transform,
                    child: Image.asset("assets/images/pizza2.png"),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// for mobile
class MobileHeaderContain extends StatelessWidget {
  const MobileHeaderContain({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MobileHeaderController());

    final hoveredTransform = Matrix4.identity()..scale(1.1);

    return Column(
      children: [
        MouseRegion(
          onEnter: (_) => controller.onHover(true),
          onExit: (_) => controller.onHover(false),
          child: Obx(() {
            final transform = controller.isHovered.value
                ? hoveredTransform
                : Matrix4.identity();

            return AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              transform: transform,
              child: Container(
                height: 150,
                 width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/pizza2.png"),
                  ),
                ),
              ),
            );
          }),
        ),
        const HeaderBody(),
      ],
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AutoSizeText(
          "Eat Today",
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 53),
        ),
        const SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Live another day",
          maxLines: 1,
          style: TextStyle(fontSize: 53),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome to Pizza Hub, your premier online pizza destination! Indulge in a symphony of flavors with our diverse menu. Customize your perfect pizza, explore tempting sides, and enjoy a seamless ordering experience. Join us in savoring excellence – welcome to a world of taste, welcome to Pizza Hub! 🍕🌐",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: "Search your favorite items",
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: OutlinedButton(
            style:
                OutlinedButton.styleFrom(backgroundColor: Colors.amberAccent),
            onPressed: () {},
            child: const Text(
              "Order Now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
