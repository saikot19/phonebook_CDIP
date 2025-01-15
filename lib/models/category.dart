import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name; // Changed from 'name' to 'title' for consistency
  final Color color;
  final String imageUrl; // Added type for imageUrl

  const Category({
    required this.id,
    required this.name,
    this.color = const Color(0xFFCCCCCC), // Added default value for color
    required this.imageUrl,
  });
}
