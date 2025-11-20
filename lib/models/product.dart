import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final IconData icon;
  final String category;
  final String imageUrl; // Network image URL
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.icon,
    required this.category,
    required this.imageUrl,
    required this.description,
  });
}
