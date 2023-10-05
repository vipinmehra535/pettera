import 'package:flutter/material.dart';

class StampBook extends StatelessWidget {
  const StampBook({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> image = [
      {
        "name": "Snowy",
        "imageUrl":
            "https://images.unsplash.com/photo-1696426505213-ec946065920b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1682685797507-d44d838b0ac7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1696267035151-10287788cd06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1696438677361-552f1209d48c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: image.length,
            itemBuilder: (context, index) {
              return Image.network(
                image[index]["imageUrl"],
                fit: BoxFit.cover,
              );
            },
          ),
        ],
      ),
    );
  }
}
