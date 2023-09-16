import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 06',
      home: const MyHomePage(),
      theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(Colors.blue),
      )),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  mySnackBar(context, message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  final TextStyle myTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: Scrollbar(
        thickness: 10,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Welcome to My Photo Gallery!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for photo...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.88,
                  ),
                  children: [
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://myfreedo.in/img/2018/09/6023218_most%20beautiful%20flowers%2011.jpg",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Photo 1",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 1');
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://img.freepik.com/free-photo/beautiful-flowers-with-water-drops_23-2150705665.jpg",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Photo 2",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 2');
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2022/01/03053528/Sunflower.jpg",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Photo 3",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 3');
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEPg-pKaqM5oJSwIdq4V4OZI3-vWEnU6GiNBuZoXiMChnamL14riU0fZZWsEEvx6R4hOE&usqp=CAU",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Photo 4",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 4');
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://www.mydomaine.com/thmb/JHucqMjGl1jYdB4pLJ35DnkBp_I=/700x0/filters:no_upscale():strip_icc()/cdn.cliqueinc.com__cache__posts__253245__most-beautiful-flowers-253245-1522430488364-main.700x0c-a78967ab454547bb9d890dadd9f9e508.jpg",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Photo 5",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 5');
                      },
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Image.network(
                            "https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2022/01/03053556/Red-Camellias.jpg",
                            width: 110,
                            height: 110,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Photo 6",
                            style: myTextStyle,
                          )
                        ],
                      ),
                      onTap: () {
                        mySnackBar(context, 'Photo 6');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 230,
                child: ListView(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                            "https://myfreedo.in/img/2018/09/6023218_most%20beautiful%20flowers%2011.jpg",
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.fill),
                      ),
                      title: Text(
                        'Photo 1',
                        style: myTextStyle,
                      ),
                      subtitle: const Text('Photo 1 description.'),
                    ),
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                            "https://img.freepik.com/free-photo/beautiful-flowers-with-water-drops_23-2150705665.jpg",
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.fill),
                      ),
                      title: Text(
                        'Photo 2',
                        style: myTextStyle,
                      ),
                      subtitle: const Text('Photo 2 description.'),
                    ),
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                            "https://d3cif2hu95s88v.cloudfront.net/blog/wp-content/uploads/2022/01/03053556/Red-Camellias.jpg",
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.fill),
                      ),
                      title: Text(
                        'Photo 3',
                        style: myTextStyle,
                      ),
                      subtitle: const Text('Photo 3 description.'),
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: () {
                    mySnackBar(context, "Photos Uploaded Successfully!");
                  },
                  child: const Icon(
                    Icons.upload,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
