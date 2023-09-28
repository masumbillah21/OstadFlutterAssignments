import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "https://bloomsbythebox.sirv.com/img/category/00195_Pink-Flowers-500x500.jpg",
    "https://i.pinimg.com/1200x/9f/14/1d/9f141df5002a23e18954dbb9c0a2b756.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2022/3/WE/QY/YU/16410835/new-product-500x500.jpeg",
    "https://www.amazingclubs.com/images2/flower-01.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREv069zYnywKrMeiMuJtLVfyP47za4KPqLcg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-XbrDbujTR9KrzKhKaHMWqe9ZVSr2_TJJhQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFu-Lwrf6sUQVL_jFEamuQntUG5jwux4mI9Q&usqp=CAU",
    "https://4.imimg.com/data4/HT/SO/MY-10480455/vadamalli-flower-500x500.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUJP0eeKJBrQPi-cOJY8-h8Pxt77FS36g0JA&usqp=CAU"
  ];

  Widget circleImage(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: const NetworkImage(
        "https://cdn.dribbble.com/users/3734064/screenshots/14348087/media/a99ab961c8f8c7d29b5f7136e0b19ca4.png",
      ),
    );
  }

  Widget gridView(image) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
        itemCount: 9,
        itemBuilder: (context, index) => Image.network(
          image[index],
          width: 100,
          height: 150,
        ),
      ),
    );
  }

  Widget profileTitle() {
    return const Text(
      "John Doe",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget profileDescription() {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    circleImage(200),
                    const SizedBox(
                      height: 10,
                    ),
                    profileTitle(),
                    const SizedBox(
                      height: 10,
                    ),
                    profileDescription(),
                    const SizedBox(
                      height: 10,
                    ),
                    gridView(images),
                  ],
                ),
              );
            } else {
              return SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circleImage(120),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileTitle(),
                          const SizedBox(
                            height: 10,
                          ),
                          profileDescription(),
                          const SizedBox(
                            height: 10,
                          ),
                          gridView(images),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
