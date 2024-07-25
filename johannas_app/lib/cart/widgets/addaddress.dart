import 'package:flutter/material.dart';

class addaddress extends StatefulWidget {
  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<addaddress> {
  final _newNumberController = TextEditingController();
  final _newAddressController = TextEditingController();
  final _newZipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: _newNumberController,
                decoration: InputDecoration(
                  labelText: "Number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _newAddressController,
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _newZipCodeController,
                decoration: InputDecoration(
                  labelText: "Zip Code",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add new address
                  Navigator.pop(context, {
                    "number": _newNumberController.text,
                    "address": _newAddressController.text,
                    "zipCode": _newZipCodeController.text,
                  });
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}