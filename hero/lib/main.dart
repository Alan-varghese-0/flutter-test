import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  final String imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pinterest-like Image Viewer')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FullImageScreen(imageUrl: imageUrl),
              ),
            );
          },
          child: Hero(
            tag: 'myImageHero',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 150,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FullImageScreen extends StatefulWidget {
  final String imageUrl;

  const FullImageScreen({super.key, required this.imageUrl});

  @override
  State<FullImageScreen> createState() => _FullImageScreenState();
}

class _FullImageScreenState extends State<FullImageScreen>
    with TickerProviderStateMixin {
  late AnimationController _scale1;
  late AnimationController _scale2;
  late AnimationController _scale3;
  late AnimationController _fadeController;
  bool iconsVisible = false;

  @override
  void initState() {
    super.initState();

    _scale1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _scale2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _scale3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _fadeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.3,
    );
  }

  void showIcons() async {
    if (iconsVisible) return;
    setState(() => iconsVisible = true);
    _fadeController.forward();
    await Future.wait([
      _scale1.forward(),
      Future.delayed(Duration(milliseconds: 50), () => _scale2.forward()),
      Future.delayed(Duration(milliseconds: 100), () => _scale3.forward()),
    ]);
  }

  void hideIcons() async {
    if (!iconsVisible) return;
    await Future.wait([
      _scale3.reverse(),
      Future.delayed(Duration(milliseconds: 50), () => _scale2.reverse()),
      Future.delayed(Duration(milliseconds: 100), () => _scale1.reverse()),
    ]);
    _fadeController.reverse();
    setState(() => iconsVisible = false);
  }

  @override
  void dispose() {
    _scale1.dispose();
    _scale2.dispose();
    _scale3.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Widget buildPopupButton(
      AnimationController controller, IconData icon, Alignment alignment, VoidCallback onPressed) {
    return Align(
      alignment: alignment,
      child: ScaleTransition(
        scale: CurvedAnimation(parent: controller, curve: Curves.easeOutBack),
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon, color: Colors.black87, size: 28),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background overlay that fades in during long press
          AnimatedBuilder(
            animation: _fadeController,
            builder: (context, child) {
              return Container(
                color: Colors.black.withOpacity(_fadeController.value),
              );
            },
          ),
          // Image with Hero animation and gesture handling
          Center(
            child: GestureDetector(
              onLongPressStart: (_) => showIcons(),
              onLongPressEnd: (_) => hideIcons(),
              onTap: hideIcons, // Tap anywhere to dismiss buttons
              child: Hero(
                tag: 'myImageHero',
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Pinterest-like action buttons
          if (iconsVisible) ...[
            buildPopupButton(
              _scale1,
              Icons.bookmark_border, // Save action
              Alignment.topRight,
              () {
                hideIcons();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Image saved!')),
                );
              },
            ),
            buildPopupButton(
              _scale2,
              Icons.share, // Share action
              Alignment.centerRight,
              () {
                hideIcons();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Share action triggered!')),
                );
              },
            ),
            buildPopupButton(
              _scale3,
              Icons.visibility_off, // Hide action
              Alignment.bottomRight,
              () {
                hideIcons();
                ScaffoldMessenger.of(context).import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final String imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s';

  late AnimationController _scale1;
  late AnimationController _scale2;
  late AnimationController _scale3;
  late AnimationController _fadeController;
  bool iconsVisible = false;

  @override
  void initState() {
    super.initState();

    _scale1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _scale2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _scale3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _fadeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.3,
    );
  }

  void showIcons() async {
    if (iconsVisible) return;
    setState(() => iconsVisible = true);
    _fadeController.forward();
    await Future.wait([
      _scale1.forward(),
      Future.delayed(Duration(milliseconds: 50), () => _scale2.forward()),
      Future.delayed(Duration(milliseconds: 100), () => _scale3.forward()),
    ]);
  }

  void hideIcons() async {
    if (!iconsVisible) return;
    await Future.wait([
      _scale3.reverse(),
      Future.delayed(Duration(milliseconds: 50), () => _scale2.reverse()),
      Future.delayed(Duration(milliseconds: 100), () => _scale1.reverse()),
    );
    _fadeController.reverse();
    setState(() => iconsVisible = false);
  }

  @override
  void dispose() {
    _scale1.dispose();
    _scale2.dispose();
    _scale3.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Widget buildPopupButton(
      AnimationController controller, IconData icon, Alignment alignment, VoidCallback onPressed) {
    return Align(
      alignment: alignment,
      child: ScaleTransition(
        scale: CurvedAnimation(parent: controller, curve: Curves.easeOutBack),
        child: Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon, color: Colors.black87, size: 28),
            onPressed: () {
              hideIcons();
              onPressed();
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pinterest-like Image Viewer')),
      body: Stack(
        children: [
          // Background overlay for long press
          AnimatedBuilder(
            animation: _fadeController,
            builder: (context, child) {
              return Container(
                color: Colors.black.withOpacity(_fadeController.value),
              );
            },
          ),
          // Main content
          Center(
            child: GestureDetector(
              onLongPressStart: (_) => showIcons(),
              onLongPressEnd: (_) => hideIcons(),
              onTap: hideIcons, // Tap to dismiss buttons
              child: Hero(
                tag: 'myImageHero',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // Pinterest-like action buttons
          if (iconsVisible) ...[
            buildPopupButton(
              _scale1,
              Icons.bookmark_border, // Save action
              Alignment.topCenter,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Image saved!')),
                );
              },
            ),
            buildPopupButton(
              _scale2,
              Icons.share, // Share action
              Alignment.center,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Share action triggered!')),
                );
              },
            ),
            buildPopupButton(
              _scale3,
              Icons.visibility_off, // Hide action
              Alignment.bottomCenter,
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Image hidden!')),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}showSnackBar(
                  SnackBar(content: Text('Image hidden!')),
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}