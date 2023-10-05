import 'package:assignment/widget/posts.dart';
import 'package:flutter/material.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({Key? key}) : super(key: key);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> tabs = [
    {
      'label': 'Posts',
      'widget': const Post(),
    },
    {
      'label': 'Stamp Book',
      'widget':
          const Post(), // You should replace 'Post()' with the actual widget for 'Stamp Book'.
    },
    {
      'label': 'Community',
      'widget':
          const Post(), // You should replace 'Post()' with the actual widget for 'Community'.
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width / 15),
              child: SizedBox(
                height: 45,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width / 20,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                tabs[index]['label'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                                  fontFamily: "Plus Jakarta Sans",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 40,
                              height: 2,
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? const Color(0xff0E3C6E)
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        tabs[selectedIndex]['widget'],
      ],
    );
  }
}
