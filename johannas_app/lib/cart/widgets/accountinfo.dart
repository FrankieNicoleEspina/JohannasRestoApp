import 'package:flutter/material.dart';

class ProfileInfoPage extends StatefulWidget {
  @override
  _ProfileInfoPageState createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  // Controllers for editing profile info
  final _nameController = TextEditingController(text: "John Doe");
  final _addressController = TextEditingController(text: "123 Main St, Anytown, USA 12345");
  final _phoneNumberController = TextEditingController(text: "123-456-7890");
  final _emailController = TextEditingController(text: "johndoe@example.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Information"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // Name
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Address
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Phone Number
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Email Address
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              // Save button
              ElevatedButton(
                onPressed: () {
                  // Save profile info
                  print("Profile info saved:");
                  print("Name: ${_nameController.text}");
                  print("Address: ${_addressController.text}");
                  print("Phone Number: ${_phoneNumberController.text}");
                  print("Email Address: ${_emailController.text}");
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}