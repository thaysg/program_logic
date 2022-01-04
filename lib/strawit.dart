import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                isLoading: isLoading,
                enabled: enabled,
                title: 'Fazer Café!',
                onTap: () {
                  setState(() {
                    isLoading = !isLoading;
                  });
                },
              ),
            ),
            GestureDetector(
                child: Text('Ativa/Desativa'),
                onTap: () {
                  setState(() {
                    enabled = !enabled;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool isLoading;
  final bool enabled;
  CustomButton({
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.enabled = true,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled || isLoading ? onTap : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        width: isLoading ? 60 : 300,
        padding: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: enabled || isLoading ? Colors.purple : Colors.grey,
          borderRadius: BorderRadius.circular(isLoading ? 50.0 : 12.0),
          boxShadow: [
            BoxShadow(
              color: enabled || isLoading
                  ? Colors.purple.shade400
                  : Colors.grey.shade400,
              blurRadius: 10.0,
              spreadRadius: 0.1,
            ),
          ],
        ),
        child: isLoading
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
            : Text(
                title.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
