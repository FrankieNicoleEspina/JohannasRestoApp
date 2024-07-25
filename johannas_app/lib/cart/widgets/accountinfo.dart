import 'package:flutter/material.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileInfoPageState createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  // Controllers for editing profile info
  final _nameController = TextEditingController(text: "John Doe");
  final _addressController =
      TextEditingController(text: "123 Main St, Anytown, USA 12345");
  final _phoneNumberController = TextEditingController(text: "123-456-7890");
  final _emailController = TextEditingController(text: "johndoe@example.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Name
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Address
              TextField(
                controller: _addressController,
                decoration: const InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Phone Number
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Email Address
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 32),
              // Save button
              ElevatedButton(
                onPressed: () {
                  // Save profile info
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
