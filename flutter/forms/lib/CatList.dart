import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CatList extends StatefulWidget {
  const CatList({ Key? key }) : super(key: key);

  @override
  _CatListState createState() => _CatListState();
}

class _CatListState extends State<CatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('categories').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final categories = snapshot.data!.docs;

          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return ListTile(
                title: Text(category['categoryname']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Handle edit action
                        showDialog(
                          context: context,
                          builder: (context) {
                            final TextEditingController controller = TextEditingController(text: category['categoryname']);
                            return AlertDialog(
                              title: Text('Edit Category'),
                              content: TextField(
                                controller: controller,
                                decoration: InputDecoration(hintText: "Category Name"),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection('categories')
                                        .doc(category.id)
                                        .update({'categoryname': controller.text});
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Save'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // Handle delete actionIconButton(
                    FirebaseFirestore.instance
                        .collection('categories')
                        .doc(category.id)
                        .delete();
                
                      },
                    ),
                  ],
                )

              );
            },
          );
        },
      ),
    );
  }
}