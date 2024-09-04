// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactMeView extends StatelessWidget {
  const ContactMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email: toluwa.ao@gmail.com', style: TextStyle(color: Colors.white)),
                    Text('Phone: 09090535814', style: TextStyle(color: Colors.white)),
                    Text('Social Media: @example_designs', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Send Message'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.grey[800],
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Mail',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      // Add other fields as needed...
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Send Message'),
                      ),
                    ],
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
