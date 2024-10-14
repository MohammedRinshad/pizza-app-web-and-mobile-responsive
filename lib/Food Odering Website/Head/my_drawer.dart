import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Rinshad"),
            accountEmail: Text("rinshadmt20@gmail.com"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/024/346/446/small_2x/3d-happy-cartoon-boy-on-transparent-background-generative-ai-png.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvAvmtICxMv4Hb-ipEbkBwcW1CvraQLzRuw&s"),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Home"),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Favorite"),
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Them"),
            leading: const Icon(Icons.dark_mode),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Message"),
            leading: const Icon(Icons.message),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Review"),
            leading: const Icon(Icons.reviews),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Share"),
            leading: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
