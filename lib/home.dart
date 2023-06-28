import 'package:flutter/material.dart';
import 'package:homepage/color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showContainer = false;
  bool showSubtitle = false;

  void toggleContainer() {
    setState(() {
      showContainer = !showContainer;
    });
  }

  void toggleSubtitle() {
    setState(() {
      showSubtitle = !showSubtitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(3),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: toggleContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/main_logo.png',
                    width: 239,
                  ),
                ],
              ),
            ),
            if (showContainer)
              Container(
                width: 0.8 * MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'My name is Didi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'How can I help you?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(50, 52, 56, 0.6),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(96, 188, 250, 1),
                      ),
                      child: Transform.rotate(
                        angle: 180 * 3.1415926535 / 180,
                        child: const Icon(
                          Icons.keyboard_backspace_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  const Text(
                    "Food Drives",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ), //Food drive(FD)
            SizedBox(
              height: 290,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      SizedBox(
                        width: 280,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: ClipRRect(
                                    child: Ink.image(
                                      image: const AssetImage(
                                          "assets/images/food_drives/Img1.png"),
                                      height: 170,
                                      width: 230,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: const Text("Title"),
                                subtitle: showSubtitle
                                    ? const Text("Subtitle")
                                    : null,
                                trailing: FloatingActionButton.small(
                                  backgroundColor: "49E5EA".toColor(),
                                  heroTag: "float$index",
                                  elevation: 0,
                                  onPressed: () {
                                    toggleSubtitle();
                                  },
                                  child: showSubtitle
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(
                                          Icons.remove_red_eye_rounded),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    bottom: 10, left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [Text("Details here")],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]);
                  }),
            ), //FD builder

            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  const Text(
                    "Popular Mentor",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ), //Mentors
            SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 211,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: CircleAvatar(),
                          title: Text("Name"),
                          subtitle: Text("details"),
                        ),
                      ),
                    );
                  }),
            ), //mentor builder

            const Padding(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    "Today's Classes",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ), //Class
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      SizedBox(
                        width: 185,
                        child: Card(
                          color: "60BCFA".toColor(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20.0,
                                      child: Image.asset(
                                        "assets/images/Oval.png",
                                        fit: BoxFit.scaleDown,
                                        height:
                                            7, // Set the desired height here
                                      ),
                                    ),
                                    const Text(
                                      "Live",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: ClipRRect(
                                    child: Ink.image(
                                      image: const AssetImage(
                                          "assets/images/food_drives/Img1.png"),
                                      height: 100,
                                      width: 155,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const ListTile(
                                title: Text("Class : Title",
                                    style: TextStyle(color: Colors.white)),
                                subtitle: Text("Part : Subtitle",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]);
                  }),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    "Today Classes Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ), //Class

            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  const Text(
                    "Daily News",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ), //News
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      SizedBox(
                        width: 250,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: ClipRRect(
                                    child: Ink.image(
                                      image: const AssetImage(
                                          "assets/images/food_drives/Img1.png"),
                                      height: 170,
                                      width: 230,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: const Text("Title"),
                                subtitle: const Text("Subtitle"),
                                trailing: FloatingActionButton.small(
                                  backgroundColor: "49E5EA".toColor(),
                                  heroTag: "float$index",
                                  elevation: 0,
                                  onPressed: () {},
                                  child:
                                      const Icon(Icons.remove_red_eye_rounded),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]);
                  }),
            ), //news builder
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10),
              child: Row(
                children: [
                  const Text(
                    "Blogs",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 320,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Ink.image(
                        image: AssetImage(
                          "assets/images/$index.png",
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
