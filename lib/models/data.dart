import 'package:flutter/material.dart';
import 'category.dart';
import 'product.dart';

class AppData {
  // Data Kategori dengan warna
  static final List<Category> categories = [
    Category(name: 'Makanan', icon: Icons.fastfood, color: Colors.orange),
    Category(name: 'Minuman', icon: Icons.local_drink, color: Colors.blue),
    Category(name: 'Elektronik', icon: Icons.devices, color: Colors.purple),
    Category(name: 'Fashion', icon: Icons.checkroom, color: Colors.pink),
    Category(name: 'Olahraga', icon: Icons.sports_soccer, color: Colors.green),
    Category(name: 'Buku', icon: Icons.menu_book, color: Colors.brown),
  ];

  // Data Produk dengan gambar
  static final List<Product> products = [
    // Makanan
    Product(
      id: 'food_1',
      name: 'Nasi Goreng',
      price: 15000,
      icon: Icons.rice_bowl,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=400',
      description: 'Nasi goreng spesial dengan telur dan ayam',
    ),
    Product(
      id: 'food_2',
      name: 'Mie Ayam',
      price: 12000,
      icon: Icons.ramen_dining,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=400',
      description: 'Mie ayam dengan pangsit dan bakso',
    ),
    Product(
      id: 'food_3',
      name: 'Burger',
      price: 25000,
      icon: Icons.lunch_dining,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
      description: 'Burger beef dengan keju dan sayuran segar',
    ),
    Product(
      id: 'food_4',
      name: 'Pizza',
      price: 45000,
      icon: Icons.local_pizza,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
      description: 'Pizza ukuran medium dengan topping pilihan',
    ),
    Product(
      id: 'food_5',
      name: 'Sushi',
      price: 35000,
      icon: Icons.set_meal,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
      description: 'Sushi roll dengan salmon dan tuna segar',
    ),
    Product(
      id: 'food_6',
      name: 'Pasta',
      price: 30000,
      icon: Icons.restaurant,
      category: 'Makanan',
      imageUrl:
          'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=400',
      description: 'Pasta carbonara dengan saus creamy',
    ),

    // Minuman
    Product(
      id: 'drink_1',
      name: 'Es Teh Manis',
      price: 5000,
      icon: Icons.local_cafe,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=400',
      description: 'Es teh manis segar dan dingin',
    ),
    Product(
      id: 'drink_2',
      name: 'Kopi Latte',
      price: 18000,
      icon: Icons.coffee,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
      description: 'Kopi latte dengan latte art',
    ),
    Product(
      id: 'drink_3',
      name: 'Jus Jeruk',
      price: 12000,
      icon: Icons.emoji_food_beverage,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1600271886742-f049cd451bba?w=400',
      description: 'Jus jeruk segar tanpa gula tambahan',
    ),
    Product(
      id: 'drink_4',
      name: 'Smoothie Bowl',
      price: 25000,
      icon: Icons.icecream,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1590301157890-4810ed352733?w=400',
      description: 'Smoothie bowl dengan topping buah segar',
    ),
    Product(
      id: 'drink_5',
      name: 'Milkshake',
      price: 20000,
      icon: Icons.local_bar,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=400',
      description: 'Milkshake dengan berbagai varian rasa',
    ),
    Product(
      id: 'drink_6',
      name: 'Boba Tea',
      price: 22000,
      icon: Icons.coffee_maker,
      category: 'Minuman',
      imageUrl:
          'https://images.unsplash.com/photo-1525385444788-f23a8e9e3c76?w=400',
      description: 'Bubble tea dengan pearl tapioka',
    ),

    // Elektronik
    Product(
      id: 'elec_1',
      name: 'Smartphone X',
      price: 3500000,
      icon: Icons.smartphone,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
      description: 'Smartphone terbaru dengan kamera 48MP',
    ),
    Product(
      id: 'elec_2',
      name: 'Laptop Pro',
      price: 8500000,
      icon: Icons.laptop,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400',
      description: 'Laptop untuk kebutuhan profesional',
    ),
    Product(
      id: 'elec_3',
      name: 'Headphone Wireless',
      price: 750000,
      icon: Icons.headphones,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
      description: 'Headphone dengan noise cancelling',
    ),
    Product(
      id: 'elec_4',
      name: 'Smartwatch',
      price: 2000000,
      icon: Icons.watch,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
      description: 'Smartwatch dengan monitor kesehatan',
    ),
    Product(
      id: 'elec_5',
      name: 'Tablet',
      price: 4500000,
      icon: Icons.tablet,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=400',
      description: 'Tablet layar 10 inch untuk multimedia',
    ),
    Product(
      id: 'elec_6',
      name: 'Speaker Bluetooth',
      price: 650000,
      icon: Icons.speaker,
      category: 'Elektronik',
      imageUrl:
          'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400',
      description: 'Speaker portable dengan bass yang kuat',
    ),

    // Fashion
    Product(
      id: 'fash_1',
      name: 'T-Shirt Premium',
      price: 125000,
      icon: Icons.checkroom,
      category: 'Fashion',
      imageUrl:
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=400',
      description: 'Kaos katun premium dengan desain modern',
    ),
    Product(
      id: 'fash_2',
      name: 'Jeans Denim',
      price: 250000,
      icon: Icons.dry_cleaning,
      category: 'Fashion',
      imageUrl:
          'https://images.unsplash.com/photo-1542272604-787c3835535d?w=400',
      description: 'Celana jeans denim berkualitas tinggi',
    ),
    Product(
      id: 'fash_3',
      name: 'Sepatu Sneakers',
      price: 450000,
      icon: Icons.local_mall,
      category: 'Fashion',
      imageUrl:
          'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=400',
      description: 'Sneakers casual untuk aktivitas harian',
    ),
    Product(
      id: 'fash_4',
      name: 'Tas Ransel',
      price: 350000,
      icon: Icons.backpack,
      category: 'Fashion',
      imageUrl:
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=400',
      description: 'Tas ransel dengan banyak kompartemen',
    ),

    // Olahraga
    Product(
      id: 'sport_1',
      name: 'Bola Sepak',
      price: 180000,
      icon: Icons.sports_soccer,
      category: 'Olahraga',
      imageUrl:
          'https://images.unsplash.com/photo-1614632537423-1e6c2e7e0adb?w=400',
      description: 'Bola sepak official size 5',
    ),
    Product(
      id: 'sport_2',
      name: 'Raket Badminton',
      price: 320000,
      icon: Icons.sports_tennis,
      category: 'Olahraga',
      imageUrl:
          'https://images.unsplash.com/photo-1626224583764-f87db24ac4ea?w=400',
      description: 'Raket badminton untuk pemain pemula',
    ),
    Product(
      id: 'sport_3',
      name: 'Matras Yoga',
      price: 150000,
      icon: Icons.self_improvement,
      category: 'Olahraga',
      imageUrl:
          'https://images.unsplash.com/photo-1601925260368-ae2f83cf8b7f?w=400',
      description: 'Matras yoga anti-slip dan nyaman',
    ),
    Product(
      id: 'sport_4',
      name: 'Dumbbell Set',
      price: 280000,
      icon: Icons.fitness_center,
      category: 'Olahraga',
      imageUrl:
          'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?w=400',
      description: 'Set dumbbell 2kg untuk fitness',
    ),

    // Buku
    Product(
      id: 'book_1',
      name: 'Novel Bestseller',
      price: 85000,
      icon: Icons.menu_book,
      category: 'Buku',
      imageUrl:
          'https://images.unsplash.com/photo-1544947950-fa07a98d237f?w=400',
      description: 'Novel fiksi terbaru dari penulis terkenal',
    ),
    Product(
      id: 'book_2',
      name: 'Buku Motivasi',
      price: 95000,
      icon: Icons.auto_stories,
      category: 'Buku',
      imageUrl:
          'https://images.unsplash.com/photo-1589998059171-988d887df646?w=400',
      description: 'Buku pengembangan diri dan motivasi',
    ),
    Product(
      id: 'book_3',
      name: 'Komik Populer',
      price: 45000,
      icon: Icons.book,
      category: 'Buku',
      imageUrl:
          'https://images.unsplash.com/photo-1612178537253-bccd437b730e?w=400',
      description: 'Komik manga terjemahan bahasa Indonesia',
    ),
    Product(
      id: 'book_4',
      name: 'Buku Resep',
      price: 75000,
      icon: Icons.restaurant_menu,
      category: 'Buku',
      imageUrl:
          'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=400',
      description: 'Koleksi resep masakan nusantara',
    ),
  ];

  static List<Product> getProductsByCategory(String categoryName) {
    return products
        .where((product) => product.category == categoryName)
        .toList();
  }

  static List<Product> searchProducts(String query) {
    if (query.isEmpty) return products;
    return products.where((product) {
      return product.name.toLowerCase().contains(query.toLowerCase()) ||
          product.category.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
