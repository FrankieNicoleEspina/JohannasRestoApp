import 'package:flutter/material.dart';
import 'package:app/cart/widgets/addaddress.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressesPageState createState() => _AddressesPageState();
}

class _AddressesPageState extends State<AddressPage> {
  List<Map<String, dynamic>> _addresses = [
    {
      "number": "0975-024-1197",
      "address": "Main St",
      "zipCode": "12345",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addresses"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ..._addresses.map((address) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_pin, size: 20, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            "Default Address",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "${address["number"]}",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "${address["address"]}",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "${address["zipCode"]}",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Delete address
                              setState(() {
                                _addresses.remove(address);
                              });
                            },
                            child: Text("Delete"),
                            style: ElevatedButton.styleFrom(iconColor: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => addaddress()),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        _addresses.add(value);
                      });
                    }
                  });
                },
                child: Text("Add New Address"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}