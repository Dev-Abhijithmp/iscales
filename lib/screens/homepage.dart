import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iscales/controller/homeprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Iscales'),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            ListTile(),
            ListTile(),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageView(context, homeProvider.file),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    homeProvider.imagePick();
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Center(
                      child: Text(
                        "Select Image",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    homeProvider.removeImage();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    "Upscale image",
                    style: TextStyle(color: Colors.orange.shade800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageView(BuildContext context, File? image) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.5,
    // decoration: BoxDecoration(
    //   border: Border.all(color: Colors.black),
    //   borderRadius: BorderRadius.circular(10),
    // ),
    child: image == null ? const SizedBox() : Image.file(image),
  );
}
