# Digital Medical Store System 💊

![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue)
![Dart](https://img.shields.io/badge/Dart-2.19+-blue)
![Provider](https://img.shields.io/badge/State%20Management-Provider-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

A native Flutter mobile application for purchasing medicines and health essentials online. This project is a manual re-implementation of a FlutterFlow prototype, built with pixel-perfect UI fidelity and professional state management.

App Overview
The Digital Medical Store System enables users to:
- Browse medicines and health products
- Add items to cart and favorites
- View detailed product information
- Experience a seamless mobile checkout process
- Manage products (Admin side)

**Target Users:** General customers and pharmacy administrators.

Project Purpose
This project demonstrates the transition from low-code (FlutterFlow) to high-code (Native Flutter) development, focusing on:
- Pixel-perfect UI implementation
- Professional state management with Provider
- Clean architecture and maintainable code
- Comprehensive documentation

Side-by-Side Comparison

| FlutterFlow Prototype | Native Flutter Implementation |
|----------------------|-------------------------------|
| ![FlutterFlow Screenshot](link-to-flutterflow-screenshot) | ![Native Flutter Screenshot](link-to-native-screenshot) |

*Note: Replace with actual GIF or side-by-side screenshots*

Features
Implemented
- **User Authentication Screens** (Login, Sign Up, Get Started)
- **Home Screen** with product listing and categories
- **Product Details Screen** with complete information
- **Shopping Cart** with item management
- **Favorites System** with persistent state
- **Admin Dashboard** for product management
- **Responsive Design** for multiple screen sizes
- **Provider State Management** across all screens

State Management
- **Provider + ChangeNotifier** for shared state
- **Cart Provider**: Manages shopping cart items
- **Favorites Provider**: Handles favorite products
- **Product Provider**: Manages product data

Project Architecture
lib/
├── main.dart
├── screens/
│ ├── login_screen.dart
│ ├── home_screen.dart
│ ├── product_details_screen.dart
│ ├── cart_screen.dart
│ ├── checkout_screen.dart
│ └── admin/
│ ├── admin_dashboard.dart
│ └── product_management.dart
├── providers/
│ ├── cart_provider.dart
│ ├── favorites_provider.dart
│ └── product_provider.dart
├── models/
│ ├── product.dart
│ └── cart_item.dart
├── widgets/
│ ├── product_card.dart
│ ├── category_chip.dart
│ └── custom_app_bar.dart
└── utils/
└── constants.dart
Technologies Used
Framework: Flutter 3.0+

Language: Dart 2.19+

State Management: Provider 6.0+

Navigation: Flutter Navigator 2.0

UI Components: Material Design 3

Version Control: Git & GitHub

Requirements Met
Functional Requirements
✅ FR1: All screens from FlutterFlow prototype (min. 3 screens)

✅ FR2: Complete navigation flows between screens

✅ FR3: All local state logic implemented (favorites, toggles, forms)

✅ FR4: Provider + ChangeNotifier for state management

✅ FR5: Static assets and custom typography correctly loaded

Non-Functional Requirements
✅ NFR1: Modular, well-commented code with best practices

✅ NFR2: Responsive design tested on multiple screen sizes

✅ NFR3: Code follows Dart conventions and is readable

Development Team
Jaspher Ikan D. Samarista (422001967)

Krizandra Josephine Basit (423002468)

Carmela Lemoncito (422001796)

Christopher John Ongdico (422004964)

Thria Royella P. Peñamante (423000847)

Course: PC16 - Mobile Development
Instructor: Prof. Justin Luoise R. Neypes
Institution: National Teachers College
Date: December 2025

Documentation
Software Implementation & Design Document (SIDD)

Project Presentation Video

FlutterFlow Prototype

License
This project is for educational purposes as part of PC16 - Mobile Development course requirements.

Acknowledgments
Prof. Justin Luoise R. Neypes for guidance

Flutter & Dart communities for excellent documentation

FlutterFlow for the initial prototyping platform
How to Run

Prerequisites
- Flutter SDK 3.0 or higher
- Dart 2.19 or higher
- IDE: VS Code or Android Studio
