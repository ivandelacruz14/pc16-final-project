import 'package:flutter/material.dart';

void main() {
  runApp(const EarthDrugsStoreApp());
}

class EarthDrugsStoreApp extends StatelessWidget {
  const EarthDrugsStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Earth Drugs Store',
      theme: ThemeData(
        primaryColor: const Color(0xFF1976D2), // Changed to Blue
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

// DATA MODELS
class Medicine {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String description;
  final String category;
  final String dosage;
  final String ageGroup;
  final String bestTime;
  final String image;
  final String usageType; // Internal or External
  bool isFavorite;

  Medicine({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.description,
    required this.category,
    required this.dosage,
    required this.ageGroup,
    required this.bestTime,
    required this.image,
    required this.usageType,
    this.isFavorite = false,
  });
}

class CartItem {
  final Medicine medicine;
  int quantity;

  CartItem({
    required this.medicine,
    required this.quantity,
  });

  double get totalPrice => medicine.price * quantity;
}

//  USER DATA
class UserData {
  static String fullName = 'Jaspher Ikan Samarista';
  static String email = '422001967@ntc.edu.ph';
  static String phone = '+63 994 340 5257';
  static String address = 'NTC, Manila, Philippines';
  static int age = 25; // Add age field

  static void updateProfile(String newName, String newEmail, String newPhone,
      String newAddress, int newAge) {
    fullName = newName;
    email = newEmail;
    phone = newPhone;
    address = newAddress;
    age = newAge;
  }
}

// DATA SOURCE
class MedicineData {
  static final List<Medicine> medicines = [
    Medicine(
      id: '1',
      name: 'Paracetamol 500mg',
      brand: 'Biogesic',
      price: 50.00,
      description:
          'Fast-acting pain reliever and fever reducer. Effective for headaches, muscle pain, and fever.',
      category: 'Pain Relief',
      dosage: '1 tablet every 4-6 hours',
      ageGroup: 'Adults and children 12+',
      bestTime: 'After meals',
      image: '💊',
      usageType: 'Internal',
    ),
    Medicine(
      id: '2',
      name: 'Vitamin C 1000mg',
      brand: 'Enervon',
      price: 120.00,
      description:
          'Immune system booster with antioxidant properties. Helps in collagen production and iron absorption.',
      category: 'Vitamins',
      dosage: '1 tablet daily',
      ageGroup: 'Adults 18+',
      bestTime: 'Morning with breakfast',
      image: '🍊',
      usageType: 'Internal',
    ),
    Medicine(
      id: '3',
      name: 'Cough Syrup 120ml',
      brand: 'Solmux',
      price: 85.00,
      description:
          'Effective cough relief with expectorant properties. Helps loosen phlegm and relieve chest congestion.',
      category: 'Cough & Cold',
      dosage: '10ml every 8 hours',
      ageGroup: 'Adults and children 6+',
      bestTime: 'After meals',
      image: '🍯',
      usageType: 'Internal',
    ),
    Medicine(
      id: '4',
      name: 'Amoxicillin 250mg',
      brand: 'Amoxil',
      price: 200.00,
      description:
          'Broad-spectrum antibiotic for bacterial infections. Used for respiratory, ear, and urinary tract infections.',
      category: 'Antibiotics',
      dosage: '1 capsule every 8 hours',
      ageGroup: 'Adults and children 12+',
      bestTime: 'With meals',
      image: '💊',
      usageType: 'Internal',
    ),
    Medicine(
      id: '5',
      name: 'Ibuprofen 400mg',
      brand: 'Advil',
      price: 75.00,
      description:
          'Non-steroidal anti-inflammatory drug. Reduces inflammation, pain, and fever.',
      category: 'Pain Relief',
      dosage: '1 tablet every 6-8 hours',
      ageGroup: 'Adults 18+',
      bestTime: 'With food',
      image: '💊',
      usageType: 'Internal',
    ),
    Medicine(
      id: '6',
      name: 'Multivitamins',
      brand: 'Centrum',
      price: 150.00,
      description:
          'Complete daily multivitamin supplement. Contains essential vitamins and minerals for overall health.',
      category: 'Vitamins',
      dosage: '1 tablet daily',
      ageGroup: 'Adults 18+',
      bestTime: 'Morning with meal',
      image: '🫐',
      usageType: 'Internal',
    ),
    Medicine(
      id: '7',
      name: 'First Aid Kit',
      brand: 'Safety First',
      price: 350.00,
      description:
          'Complete first aid kit for emergencies. Contains bandages, antiseptics, gauze, and other essential medical supplies.',
      category: 'First Aid',
      dosage: 'As needed',
      ageGroup: 'All ages',
      bestTime: 'Emergency use',
      image: '🩹',
      usageType: 'External',
    ),
    Medicine(
      id: '8',
      name: 'Antiseptic Cream',
      brand: 'Betadine',
      price: 89.00,
      description:
          'Topical antiseptic cream for wound care. Prevents infection in cuts, scrapes, and minor burns.',
      category: 'First Aid',
      dosage: 'Apply 2-3 times daily',
      ageGroup: 'All ages',
      bestTime: 'After cleaning wound',
      image: '🧴',
      usageType: 'External',
    ),
    Medicine(
      id: '9',
      name: 'Bandage Strips',
      brand: 'Band-Aid',
      price: 45.00,
      description:
          'Adhesive bandage strips for minor cuts and wounds. Waterproof and flexible for comfortable wear.',
      category: 'First Aid',
      dosage: 'As needed',
      ageGroup: 'All ages',
      bestTime: 'After wound cleaning',
      image: '🩹',
      usageType: 'External',
    ),
    Medicine(
      id: '10',
      name: 'Pain Relief Gel',
      brand: 'Alaxan',
      price: 95.00,
      description:
          'Topical pain relief gel for muscle and joint pain. Provides fast relief from arthritis, sprains, and back pain.',
      category: 'External Use',
      dosage: 'Apply 3-4 times daily',
      ageGroup: 'Adults 18+',
      bestTime: 'When pain occurs',
      image: '🧴',
      usageType: 'External',
    ),
    Medicine(
      id: '11',
      name: 'Antihistamine Tablets',
      brand: 'Allerta',
      price: 65.00,
      description:
          'Relieves allergy symptoms like sneezing, runny nose, and itchy eyes. Non-drowsy formula.',
      category: 'Allergy',
      dosage: '1 tablet daily',
      ageGroup: 'Adults and children 12+',
      bestTime: 'Morning',
      image: '💊',
      usageType: 'Internal',
    ),
    Medicine(
      id: '12',
      name: 'Antifungal Cream',
      brand: 'Canesten',
      price: 120.00,
      description:
          'Effective treatment for fungal infections like athlete\'s foot and ringworm. Soothes itching and burning.',
      category: 'Skin Care',
      dosage: 'Apply 2 times daily',
      ageGroup: 'Adults 18+',
      bestTime: 'Morning and evening',
      image: '🧴',
      usageType: 'External',
    ),
  ];

  static List<String> get categories {
    return [
      'All',
      'Pain Relief',
      'Vitamins',
      'Cough & Cold',
      'Antibiotics',
      'First Aid',
      'External Use',
      'Allergy',
      'Skin Care'
    ];
  }

  static List<String> get usageTypes {
    return ['All', 'Internal', 'External'];
  }

  static List<Medicine> getMedicinesByCategory(String category) {
    if (category == 'All') return medicines;
    return medicines
        .where((medicine) => medicine.category == category)
        .toList();
  }

  static List<Medicine> getMedicinesByUsageType(String usageType) {
    if (usageType == 'All') return medicines;
    return medicines
        .where((medicine) => medicine.usageType == usageType)
        .toList();
  }

  static List<Medicine> searchMedicines(String query) {
    if (query.isEmpty) return medicines;
    return medicines
        .where((medicine) =>
            medicine.name.toLowerCase().contains(query.toLowerCase()) ||
            medicine.brand.toLowerCase().contains(query.toLowerCase()) ||
            medicine.category.toLowerCase().contains(query.toLowerCase()) ||
            medicine.usageType.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  static List<Medicine> getFavoriteMedicines() {
    return medicines.where((medicine) => medicine.isFavorite).toList();
  }

  static void toggleFavorite(String medicineId) {
    final medicine = medicines.firstWhere((med) => med.id == medicineId);
    medicine.isFavorite = !medicine.isFavorite;
  }
}

// CART PROVIDER
class CartProvider with ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  int get totalItems => _cartItems.fold(0, (sum, item) => sum + item.quantity);

  double get totalPrice =>
      _cartItems.fold(0.0, (sum, item) => sum + item.totalPrice);

  void addToCart(Medicine medicine) {
    final existingIndex =
        _cartItems.indexWhere((item) => item.medicine.id == medicine.id);

    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity++;
    } else {
      _cartItems.add(CartItem(medicine: medicine, quantity: 1));
    }
    notifyListeners();
  }

  void removeFromCart(String medicineId) {
    _cartItems.removeWhere((item) => item.medicine.id == medicineId);
    notifyListeners();
  }

  void updateQuantity(String medicineId, int newQuantity) {
    if (newQuantity <= 0) {
      removeFromCart(medicineId);
      return;
    }

    final existingIndex =
        _cartItems.indexWhere((item) => item.medicine.id == medicineId);
    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity = newQuantity;
      notifyListeners();
    }
  }

  void incrementQuantity(String medicineId) {
    updateQuantity(
        medicineId,
        _cartItems
                .firstWhere((item) => item.medicine.id == medicineId)
                .quantity +
            1);
  }

  void decrementQuantity(String medicineId) {
    final item =
        _cartItems.firstWhere((item) => item.medicine.id == medicineId);
    if (item.quantity > 1) {
      updateQuantity(medicineId, item.quantity - 1);
    } else {
      removeFromCart(medicineId);
    }
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}

// WELCOME PAGE
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0D47A1), Color(0xFF1976D2), Color(0xFF42A5F5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: -50,
                right: -50,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                left: -30,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0.1)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.medical_services,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'Earth Drugs Store',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Your trusted online pharmacy for all your healthcare needs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    _mainButton(context, 'Login', const LoginPage()),
                    const SizedBox(height: 15),
                    _outlineButton(context, 'Sign Up', const SignUpPage()),
                    const SizedBox(height: 15),
                    _getStartedButton(context),
                    const SizedBox(height: 30),
                    _buildFeatureRow(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mainButton(BuildContext context, String text, Widget page) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF1976D2),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.3),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _outlineButton(BuildContext context, String text, Widget page) {
    return Container(
      width: 250,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _getStartedButton(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.3),
        ),
        onPressed: () {
          // Show age verification dialog first
          _showAgeVerificationDialog(context);
        },
        child: const Text(
          'Get Started',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  void _showAgeVerificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Age Verification'),
        content: const Text(
          'This application is intended for users 16 years of age and older.\n\n'
          'By clicking "Continue", you confirm that you are at least 16 years old.',
          style: TextStyle(fontSize: 14),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1976D2),
            ),
            onPressed: () {
              Navigator.pop(context); // Close dialog
              // Navigate to login/signup page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
              );
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FeatureItem(icon: Icons.local_shipping, text: 'Fast Delivery'),
        SizedBox(width: 30),
        FeatureItem(icon: Icons.verified_user, text: 'Verified'),
        SizedBox(width: 30),
        FeatureItem(icon: Icons.support_agent, text: '24/7 Support'),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const FeatureItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

//LOGIN PAGE
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1976D2), Color(0xFF42A5F5), Color(0xFFE3F2FD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 15,
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Sign in to your account',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        _inputField('Email', Icons.email_outlined),
                        const SizedBox(height: 20),
                        _inputField('Password', Icons.lock_outline,
                            isPassword: true),
                        const SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1976D2),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 5,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()),
                              );
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('OR',
                                  style: TextStyle(color: Colors.grey)),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _socialButton(Icons.facebook, Colors.blue[800]!),
                            const SizedBox(width: 15),
                            _socialButton(Icons.g_mobiledata, Colors.red),
                            const SizedBox(width: 15),
                            _socialButton(Icons.apple, Colors.black),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignUpPage()),
                                );
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xFF1976D2),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField(String label, IconData icon,
      {bool isPassword = false, bool isNumber = false}) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.grey),
        filled: true,
        fillColor: Colors.grey.shade50,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF1976D2)),
        ),
      ),
    );
  }

  Widget _socialButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Icon(icon, color: color),
    );
  }
}

// HOME PAGE 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _selectedCategory = 'All';
  String _selectedUsageType = 'All';
  final CartProvider _cartProvider = CartProvider();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: const Text('Earth Drugs Store'),
        centerTitle: true,
        elevation: 0,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              if (_cartProvider.totalItems > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      _cartProvider.totalItems.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              setState(() {
                _currentIndex = 3; // Favorites page
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: _getBody(),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _getBody() {
    switch (_currentIndex) {
      case 0:
        return HomeContent(
          selectedCategory: _selectedCategory,
          selectedUsageType: _selectedUsageType,
          onCategoryChanged: (category) {
            setState(() {
              _selectedCategory = category;
              _searchQuery = '';
              _searchController.clear();
            });
          },
          onUsageTypeChanged: (usageType) {
            setState(() {
              _selectedUsageType = usageType;
              _searchQuery = '';
              _searchController.clear();
            });
          },
          cartProvider: _cartProvider,
          searchController: _searchController,
          searchQuery: _searchQuery,
          onSearchChanged: (query) {
            setState(() {
              _searchQuery = query;
            });
          },
        );
      case 1:
        return CartPage(cartProvider: _cartProvider);
      case 2:
        return ProfilePage(cartProvider: _cartProvider);
      case 3:
        return FavoritesPage(cartProvider: _cartProvider);
      default:
        return HomeContent(
          selectedCategory: _selectedCategory,
          selectedUsageType: _selectedUsageType,
          onCategoryChanged: (category) {
            setState(() {
              _selectedCategory = category;
            });
          },
          onUsageTypeChanged: (usageType) {
            setState(() {
              _selectedUsageType = usageType;
            });
          },
          cartProvider: _cartProvider,
          searchController: _searchController,
          searchQuery: _searchQuery,
          onSearchChanged: (query) {
            setState(() {
              _searchQuery = query;
            });
          },
        );
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: const Color(0xFF1976D2),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    );
  }
}

class HomeContent extends StatelessWidget {
  final String selectedCategory;
  final String selectedUsageType;
  final Function(String) onCategoryChanged;
  final Function(String) onUsageTypeChanged;
  final CartProvider cartProvider;
  final TextEditingController searchController;
  final String searchQuery;
  final Function(String) onSearchChanged;

  const HomeContent({
    super.key,
    required this.selectedCategory,
    required this.selectedUsageType,
    required this.onCategoryChanged,
    required this.onUsageTypeChanged,
    required this.cartProvider,
    required this.searchController,
    required this.searchQuery,
    required this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    List<Medicine> displayedMedicines;

    if (searchQuery.isNotEmpty) {
      displayedMedicines = MedicineData.searchMedicines(searchQuery);
    } else if (selectedUsageType != 'All') {
      displayedMedicines =
          MedicineData.getMedicinesByUsageType(selectedUsageType);
      if (selectedCategory != 'All') {
        displayedMedicines = displayedMedicines
            .where((medicine) => medicine.category == selectedCategory)
            .toList();
      }
    } else {
      displayedMedicines =
          MedicineData.getMedicinesByCategory(selectedCategory);
    }

    return Column(
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: TextField(
              controller: searchController,
              onChanged: onSearchChanged,
              decoration: InputDecoration(
                hintText:
                    'Search medicines, brands, categories, internal/external...',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear, color: Colors.grey),
                        onPressed: () {
                          searchController.clear();
                          onSearchChanged('');
                        },
                      )
                    : null,
                border: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
            ),
          ),
        ),

        // Usage Type Filter (Internal/External)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Usage Type',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildUsageTypeFilter('All', Icons.all_inclusive,
                        isSelected: selectedUsageType == 'All'),
                    _buildUsageTypeFilter('Internal', Icons.medication,
                        isSelected: selectedUsageType == 'Internal'),
                    _buildUsageTypeFilter('External', Icons.airline_seat_flat,
                        isSelected: selectedUsageType == 'External'),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),

        // Categories - Now scrollable with the products
        Expanded(
          child: CustomScrollView(
            slivers: [
              // Categories Section
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildCategory('All', Icons.all_inclusive,
                                isSelected: selectedCategory == 'All'),
                            _buildCategory('Pain Relief', Icons.sick,
                                isSelected: selectedCategory == 'Pain Relief'),
                            _buildCategory('Vitamins', Icons.health_and_safety,
                                isSelected: selectedCategory == 'Vitamins'),
                            _buildCategory('Cough & Cold', Icons.air,
                                isSelected: selectedCategory == 'Cough & Cold'),
                            _buildCategory(
                                'Antibiotics', Icons.medical_services,
                                isSelected: selectedCategory == 'Antibiotics'),
                            _buildCategory('First Aid', Icons.emergency,
                                isSelected: selectedCategory == 'First Aid'),
                            _buildCategory(
                                'External Use', Icons.airline_seat_flat,
                                isSelected: selectedCategory == 'External Use'),
                            _buildCategory('Allergy', Icons.air,
                                isSelected: selectedCategory == 'Allergy'),
                            _buildCategory('Skin Care', Icons.spa,
                                isSelected: selectedCategory == 'Skin Care'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // Products Header
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _getProductsTitle(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      if (searchQuery.isEmpty)
                        GestureDetector(
                          onTap: () {
                            // Show all products in a full screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AllProductsPage(
                                  cartProvider: cartProvider,
                                  title: _getProductsTitle(),
                                  medicines: displayedMedicines,
                                ),
                              ),
                            );
                          },
                          child: const Text(
                            'See All',
                            style: TextStyle(
                                color: Color(0xFF1976D2),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 15)),

              // Products Grid
              displayedMedicines.isEmpty
                  ? SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.search_off,
                                size: 60, color: Colors.grey),
                            const SizedBox(height: 10),
                            const Text(
                              'No products found',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Try a different search or category',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.72,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => MedicineCard(
                            medicine: displayedMedicines[index],
                            cartProvider: cartProvider,
                            onFavoriteChanged: () {
                              // Trigger rebuild when favorite status changes
                              (context as Element).markNeedsBuild();
                            },
                          ),
                          childCount: displayedMedicines.length,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }

  String _getProductsTitle() {
    if (searchQuery.isNotEmpty) {
      return 'Search Results';
    } else if (selectedUsageType != 'All') {
      if (selectedCategory != 'All') {
        return '$selectedUsageType - $selectedCategory';
      }
      return '$selectedUsageType Products';
    } else if (selectedCategory == 'All') {
      return 'All Products';
    } else {
      return '$selectedCategory Products';
    }
  }

  Widget _buildCategory(String name, IconData icon, {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => onCategoryChanged(name),
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF1976D2)
                    : const Color(0xFF1976D2).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon,
                  color: isSelected ? Colors.white : const Color(0xFF1976D2),
                  size: 24),
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: isSelected ? const Color(0xFF1976D2) : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUsageTypeFilter(String name, IconData icon,
      {bool isSelected = false}) {
    return GestureDetector(
      onTap: () => onUsageTypeChanged(name),
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF1976D2)
              : const Color(0xFF1976D2).withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                color: isSelected ? Colors.white : const Color(0xFF1976D2),
                size: 16),
            const SizedBox(width: 6),
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : const Color(0xFF1976D2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ALL PRODUCTS PAGE 
class AllProductsPage extends StatelessWidget {
  final CartProvider cartProvider;
  final String title;
  final List<Medicine> medicines;

  const AllProductsPage({
    super.key,
    required this.cartProvider,
    required this.title,
    required this.medicines,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: Text(title),
      ),
      body: SafeArea(
        child: medicines.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search_off, size: 60, color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      'No products found',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )
            : GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.72,
                ),
                itemCount: medicines.length,
                itemBuilder: (context, index) => MedicineCard(
                  medicine: medicines[index],
                  cartProvider: cartProvider,
                  onFavoriteChanged: () {
                    (context as Element).markNeedsBuild();
                  },
                ),
              ),
      ),
    );
  }
}

// FIXED MEDICINE CARD WITH FAVORITE
class MedicineCard extends StatelessWidget {
  final Medicine medicine;
  final CartProvider cartProvider;
  final VoidCallback? onFavoriteChanged;

  const MedicineCard({
    super.key,
    required this.medicine,
    required this.cartProvider,
    this.onFavoriteChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => MedicineDetailPage(
                    medicine: medicine, cartProvider: cartProvider)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  // Medicine Icon
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1976D2).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        medicine.image,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  // Favorite Icon
                  Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      icon: Icon(
                        medicine.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: medicine.isFavorite ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                      onPressed: () {
                        MedicineData.toggleFavorite(medicine.id);
                        onFavoriteChanged?.call();
                      },
                    ),
                  ),
                  // Usage Type Badge
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: medicine.usageType == 'Internal'
                            ? Colors.blue.withOpacity(0.8)
                            : Colors.orange.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        medicine.usageType == 'Internal'
                            ? 'Internal'
                            : 'External',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Medicine Name
              SizedBox(
                height: 36,
                child: Text(
                  medicine.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    height: 1.2,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),

              // Brand
              Text(
                medicine.brand,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),

              // Price
              Text(
                '₱${medicine.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Color(0xFF1976D2),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),

              // Quick Add Button
              SizedBox(
                width: double.infinity,
                height: 28,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF1976D2),
                    side: const BorderSide(color: Color(0xFF1976D2)),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    cartProvider.addToCart(medicine);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${medicine.name} added to cart'),
                        duration: const Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// FAVORITES PAGE
class FavoritesPage extends StatelessWidget {
  final CartProvider cartProvider;

  const FavoritesPage({super.key, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    final favoriteMedicines = MedicineData.getFavoriteMedicines();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'My Favorites',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            favoriteMedicines.isEmpty
                ? const Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border,
                              size: 80, color: Colors.grey),
                          SizedBox(height: 20),
                          Text(
                            'No favorites yet',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Tap the heart icon to add products to favorites',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: favoriteMedicines.length,
                      itemBuilder: (context, index) {
                        final medicine = favoriteMedicines[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: MedicineCard(
                            medicine: medicine,
                            cartProvider: cartProvider,
                            onFavoriteChanged: () {
                              (context as Element).markNeedsBuild();
                            },
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

// MEDICINE DETAIL PAGE
class MedicineDetailPage extends StatelessWidget {
  final Medicine medicine;
  final CartProvider cartProvider;

  const MedicineDetailPage(
      {super.key, required this.medicine, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: Text(medicine.name),
        actions: [
          IconButton(
            icon: Icon(
              medicine.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: medicine.isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: () {
              MedicineData.toggleFavorite(medicine.id);
              (context as Element).markNeedsBuild();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Medicine Image/Icon
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1976D2).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    medicine.image,
                    style: const TextStyle(fontSize: 80),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Medicine Name and Brand
              Text(
                medicine.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Brand: ${medicine.brand}',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 10),

              // Usage Type
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: medicine.usageType == 'Internal'
                      ? Colors.blue.withOpacity(0.1)
                      : Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: medicine.usageType == 'Internal'
                        ? Colors.blue
                        : Colors.orange,
                    width: 1,
                  ),
                ),
                child: Text(
                  '${medicine.usageType} Use',
                  style: TextStyle(
                    color: medicine.usageType == 'Internal'
                        ? Colors.blue
                        : Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Price
              Text(
                '₱${medicine.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1976D2),
                ),
              ),
              const SizedBox(height: 20),

              // Description
              const Text(
                'Description',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                medicine.description,
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 20),

              // Details Grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildDetailCard(
                      'Category', medicine.category, Icons.category),
                  _buildDetailCard('Dosage', medicine.dosage, Icons.medication),
                  _buildDetailCard(
                      'Age Group', medicine.ageGroup, Icons.person),
                  _buildDetailCard(
                      'Best Time', medicine.bestTime, Icons.access_time),
                ],
              ),
              const SizedBox(height: 30),

              // Action Buttons
              Column(
                children: [
                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1976D2),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        cartProvider.addToCart(medicine);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${medicine.name} added to cart'),
                            duration: const Duration(seconds: 2),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Buy Now Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF1976D2),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                              color: Color(0xFF1976D2), width: 2),
                        ),
                      ),
                      onPressed: () {
                        cartProvider.addToCart(medicine);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CheckoutPage(
                                  cartProvider: cartProvider,
                                  singleProduct: medicine)),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bolt, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Buy Now',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: const Color(0xFF1976D2), size: 24),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// CHECKOUT PAGE WITH DELIVERY DETAILS
class CheckoutPage extends StatefulWidget {
  final CartProvider cartProvider;
  final Medicine? singleProduct;

  const CheckoutPage(
      {super.key, required this.cartProvider, this.singleProduct});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  String _selectedPaymentMethod = 'Cash on Delivery';
  DateTime _selectedDate = DateTime.now().add(const Duration(days: 2));

  @override
  void initState() {
    super.initState();
    _addressController.text = UserData.address;
    _phoneController.text = UserData.phone;
  }

  @override
  Widget build(BuildContext context) {
    final totalAmount = widget.singleProduct != null
        ? widget.singleProduct!.price + 50
        : widget.cartProvider.totalPrice + 50;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        title: const Text('Checkout'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Delivery Information
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Delivery Information',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      _buildInfoField('Full Name', UserData.fullName),
                      _buildInfoField('Email', UserData.email),
                      _buildEditableField(
                        'Delivery Address',
                        'Enter your complete address',
                        _addressController,
                        Icons.location_on,
                      ),
                      _buildEditableField(
                        'Phone Number',
                        'Enter your phone number',
                        _phoneController,
                        Icons.phone,
                      ),
                      _buildEditableField(
                        'Delivery Notes (Optional)',
                        'e.g., Gate code, landmarks, etc.',
                        _notesController,
                        Icons.note,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Expected Delivery Date
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expected Delivery',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const Icon(Icons.calendar_today,
                            color: Color(0xFF1976D2)),
                        title: const Text('Delivery Date'),
                        subtitle: Text(
                          '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: IconButton(
                          icon:
                              const Icon(Icons.edit, color: Color(0xFF1976D2)),
                          onPressed: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: _selectedDate,
                              firstDate:
                                  DateTime.now().add(const Duration(days: 1)),
                              lastDate:
                                  DateTime.now().add(const Duration(days: 30)),
                            );
                            if (picked != null && picked != _selectedDate) {
                              setState(() {
                                _selectedDate = picked;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Estimated delivery within 2-3 business days',
                        style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Payment Method
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      _buildPaymentMethodOption('Cash on Delivery', Icons.money,
                          'Pay when you receive your order'),
                      _buildPaymentMethodOption('GCash', Icons.phone_android,
                          'Pay using GCash wallet'),
                      _buildPaymentMethodOption('Credit/Debit Card',
                          Icons.credit_card, 'Pay with your card'),
                      _buildPaymentMethodOption(
                          'PayMaya', Icons.payment, 'Pay using PayMaya'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Order Summary
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order Summary',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      if (widget.singleProduct != null)
                        _buildOrderRow('${widget.singleProduct!.name} x1',
                            '₱${widget.singleProduct!.price.toStringAsFixed(2)}')
                      else
                        ...widget.cartProvider.cartItems.map((item) =>
                            _buildOrderRow(
                                '${item.medicine.name} x${item.quantity}',
                                '₱${item.totalPrice.toStringAsFixed(2)}')),
                      _buildOrderRow('Delivery Fee', '₱50.00'),
                      const Divider(),
                      _buildOrderRow(
                          'Total', '₱${totalAmount.toStringAsFixed(2)}',
                          isTotal: true),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Confirm Order Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1976D2),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (_addressController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter your delivery address'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    if (_phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter your phone number'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }

                    // Process order
                    if (widget.singleProduct == null) {
                      widget.cartProvider.clearCart();
                    }

                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Order Successful!',
                            style: TextStyle(color: Color(0xFF1976D2))),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Your order has been placed successfully!'),
                            const SizedBox(height: 10),
                            Text(
                                'Expected Delivery: ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
                            const SizedBox(height: 5),
                            Text('Payment Method: $_selectedPaymentMethod'),
                            const SizedBox(height: 5),
                            Text('Delivery to: ${_addressController.text}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()),
                                (route) => false,
                              );
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text(
                    'Confirm Order',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildEditableField(String label, String hint,
      TextEditingController controller, IconData icon,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: Icon(icon, color: const Color(0xFF1976D2)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFF1976D2)),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildPaymentMethodOption(
      String method, IconData icon, String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1976D2)),
        title: Text(method),
        subtitle: Text(description, style: const TextStyle(fontSize: 12)),
        trailing: Radio(
          value: method,
          groupValue: _selectedPaymentMethod,
          onChanged: (value) {
            setState(() {
              _selectedPaymentMethod = value!;
            });
          },
          activeColor: const Color(0xFF1976D2),
        ),
        onTap: () {
          setState(() {
            _selectedPaymentMethod = method;
          });
        },
      ),
    );
  }

  Widget _buildOrderRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: isTotal ? 16 : 14)),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? const Color(0xFF1976D2) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// CART PAGE WITH IMPROVED QUANTITY CONTROLS
class CartPage extends StatelessWidget {
  final CartProvider cartProvider;

  const CartPage({super.key, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    if (cartProvider.cartItems.isEmpty) {
      return const EmptyCartPage();
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Cart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: cartProvider.cartItems
                .map((item) => CartItemWidget(
                      item: item,
                      cartProvider: cartProvider,
                    ))
                .toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: Column(
            children: [
              _buildTotalRow(
                  'Subtotal', '₱${cartProvider.totalPrice.toStringAsFixed(2)}'),
              _buildTotalRow('Delivery Fee', '₱50.00'),
              const Divider(),
              _buildTotalRow('Total',
                  '₱${(cartProvider.totalPrice + 50).toStringAsFixed(2)}',
                  isTotal: true),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1976D2),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              CheckoutPage(cartProvider: cartProvider)),
                    );
                  },
                  child: const Text(
                    'Proceed to Checkout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTotalRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: isTotal ? 18 : 16)),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? const Color(0xFF1976D2) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final CartProvider cartProvider;

  const CartItemWidget(
      {super.key, required this.item, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF1976D2).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(item.medicine.image,
                  style: const TextStyle(fontSize: 24)),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.medicine.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  item.medicine.brand,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  '₱${item.medicine.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Color(0xFF1976D2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              // Improved Quantity Controls
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove, size: 18),
                      onPressed: () {
                        cartProvider.decrementQuantity(item.medicine.id);
                      },
                      padding: const EdgeInsets.all(4),
                    ),
                    Container(
                      width: 30,
                      alignment: Alignment.center,
                      child: Text(
                        item.quantity.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, size: 18),
                      onPressed: () {
                        cartProvider.incrementQuantity(item.medicine.id);
                      },
                      padding: const EdgeInsets.all(4),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 100,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    side: const BorderSide(color: Colors.red),
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    cartProvider.removeFromCart(item.medicine.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('${item.medicine.name} removed from cart'),
                        duration: const Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: const Text(
                    'Remove',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            'Your cart is empty',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Add some medicines to get started',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

// PAYMENT PAGE (Updated to use CheckoutPage) 
class PaymentPage extends StatelessWidget {
  final CartProvider cartProvider;

  const PaymentPage({super.key, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    return CheckoutPage(cartProvider: cartProvider);
  }
}

// ---------------- PROFILE PAGE ----------------
class ProfilePage extends StatefulWidget {
  final CartProvider cartProvider;

  const ProfilePage({super.key, required this.cartProvider});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.grey),
            ),
            const SizedBox(height: 15),
            Text(
              UserData.fullName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              UserData.email,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            _buildProfileItem(Icons.person, 'Personal Information', () {
              _showEditProfileDialog(context);
            }),
            _buildProfileItem(Icons.shopping_bag, 'My Orders', () {
              _showOrdersPage(context);
            }),
            _buildProfileItem(Icons.location_on, 'Delivery Address', () {
              _showAddressPage(context);
            }),
            _buildProfileItem(Icons.payment, 'Payment Methods', () {
              _showPaymentMethodsPage(context);
            }),
            _buildProfileItem(Icons.favorite, 'My Favorites', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      FavoritesPage(cartProvider: widget.cartProvider),
                ),
              );
            }),
            _buildProfileItem(Icons.settings, 'Settings', () {
              _showSettingsPage(context);
            }),
            _buildProfileItem(Icons.help, 'Help & Support', () {
              _showHelpPage(context);
            }),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const WelcomePage()),
                    (route) => false,
                  );
                },
                child: const Text('Log Out'),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(IconData icon, String text, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF1976D2).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: const Color(0xFF1976D2)),
        ),
        title: Text(text),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  void _showEditProfileDialog(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: UserData.fullName);
    TextEditingController emailController =
        TextEditingController(text: UserData.email);
    TextEditingController phoneController =
        TextEditingController(text: UserData.phone);
    TextEditingController ageController =
        TextEditingController(text: UserData.age.toString());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Profile'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Age'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final age = int.tryParse(ageController.text) ?? UserData.age;
              if (age < 16) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Age must be 16 or above'),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }

              setState(() {
                UserData.updateProfile(
                  nameController.text,
                  emailController.text,
                  phoneController.text,
                  UserData.address,
                  age,
                );
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile updated successfully!')),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showOrdersPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('My Orders'),
        content: const Text('Your order history will appear here.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showAddressPage(BuildContext context) {
    TextEditingController addressController =
        TextEditingController(text: UserData.address);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delivery Address'),
        content: TextField(
          controller: addressController,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'Address'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                UserData.updateProfile(
                  UserData.fullName,
                  UserData.email,
                  UserData.phone,
                  addressController.text,
                  UserData.age,
                );
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Address updated successfully!')),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showPaymentMethodsPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Payment Methods'),
        content: const Text('Your saved payment methods will appear here.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSettingsPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Settings'),
        content: const Text('App settings will appear here.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showHelpPage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Help & Support'),
        content: const Text('Contact support at: support@earthdrugs.com'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

// SIGN UP PAGE
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  bool _termsAccepted = false;
  bool _showAgeError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1976D2), Color(0xFF42A5F5), Color(0xFFE3F2FD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 15,
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Join us for better healthcare',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            prefixIcon: const Icon(Icons.person_outline,
                                color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            prefixIcon: const Icon(Icons.email_outlined,
                                color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            prefixIcon:
                                const Icon(Icons.phone, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Age',
                            prefixIcon:
                                const Icon(Icons.cake, color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                            errorText: _showAgeError
                                ? 'Must be 16 years or older'
                                : null,
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                _showAgeError = int.tryParse(value) != null &&
                                    int.parse(value) < 16;
                              });
                            } else {
                              setState(() {
                                _showAgeError = false;
                              });
                            }
                          },
                        ),
                        if (_showAgeError)
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 12.0),
                            child: Text(
                              'This app is only for users 16 years old and above',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock_outline,
                                color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            prefixIcon: const Icon(Icons.lock_outline,
                                color: Colors.grey),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFF1976D2)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Checkbox(
                              value: _termsAccepted,
                              onChanged: (value) {
                                setState(() {
                                  _termsAccepted = value ?? false;
                                });
                              },
                              activeColor: const Color(0xFF1976D2),
                            ),
                            const Expanded(
                              child: Text(
                                'I agree to the Terms & Conditions and Privacy Policy',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1976D2),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 5,
                            ),
                            onPressed: () {
                              // Validate age
                              final age = int.tryParse(_ageController.text);

                              if (age == null || age < 16) {
                                setState(() {
                                  _showAgeError = true;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'You must be 16 years or older to use this app'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }

                              // Validate other fields
                              if (_nameController.text.isEmpty ||
                                  _emailController.text.isEmpty ||
                                  _phoneController.text.isEmpty ||
                                  _passwordController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Please fill in all required fields'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }

                              if (!_termsAccepted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Please accept the Terms & Conditions'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }

                              if (_passwordController.text !=
                                  _confirmPasswordController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Passwords do not match'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }

                              // Update UserData with new profile information
                              UserData.updateProfile(
                                _nameController.text,
                                _emailController.text,
                                _phoneController.text,
                                UserData.address,
                                age,
                              );

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()),
                              );
                            },
                            child: const Text(
                              'Create Account',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const LoginPage()),
                                );
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Color(0xFF1976D2),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
