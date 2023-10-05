import 'package:assignment/widget/posts.dart';
import 'package:flutter/material.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({super.key});

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> tabs = [
    {
      'lable': 'Posts',
      'widget': const Post(),
    },
    {
      'lable': 'Stamp Book',
      'widget': const Post(),
    },
    {
      'lable': 'Community',
      'widget': const Post(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    selectedIndex = 0;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: size.width / 12,
              ),
              child: SizedBox(
                height: 45,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    tabs[index]['lable'],
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
                        ),
                        const SizedBox(width: 20)
                      ],
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
