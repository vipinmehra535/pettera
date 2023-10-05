import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> image = [
      {
        "name": "Snowy",
        "imageUrl":
            "https://images.unsplash.com/photo-1696063429824-b0f45cd175eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1695349091210-ad56d3dfd1e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1695349091210-ad56d3dfd1e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      },
      {
        "name": "Sandy",
        "imageUrl":
            "https://images.unsplash.com/photo-1695349091210-ad56d3dfd1e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
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
