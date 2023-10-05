import 'package:assignment/widget/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> highLights = [
    {
      "name": "Snowy",
      "imageUrl":
          "https://images.unsplash.com/photo-1696347284654-b952434231e0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
    },
    {
      "name": "Sandy",
      "imageUrl":
          "https://images.unsplash.com/photo-1682685797818-c9dc151d241e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
    }
  ];

  final List<Map<String, dynamic>> userData = [
    {
      "num": 2,
      "type": "Posts",
    },
    {
      "num": 1,
      "type": "Follower",
    },
    {
      "num": 2,
      "type": "Following",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 70,
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 25, 27, 34),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.elliptical(300, 30),
                        topLeft: Radius.elliptical(300, 30),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Stack(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: size.width / 5,
                            backgroundImage: const NetworkImage(
                              "https://images.unsplash.com/photo-1696253930712-f17f6b3d7095?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 25, 27, 34),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            height: size.height / 20,
                            width: size.width / 3.5,
                            child: const Center(
                              child: Text(
                                "Following",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "Shane Mathias",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Co founder ❤️",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 6,
                    width: size.width,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: highLights.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: size.width / 12,
                                backgroundImage:
                                    NetworkImage(highLights[index]['imageUrl']),
                              ),
                              Text(
                                highLights[index]['name'],
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: size.width / 20),
                    height: size.height / 15,
                    width: size.width,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: userData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                userData[index]['num'].toString(),
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                userData[index]['type'],
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          width: 2,
                          color: Colors.black,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomTabView(),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
