import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Iscales'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageView(context),
            ElevatedButton(onPressed: () {}, child: const Text('pickImage')),
            ElevatedButton(onPressed: () {}, child: const Text('removeImage')),
            upScaleButton(),
          ],
        ),
      ),
    );
  }
}

Widget imageView(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.5,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Widget upScaleButton() {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Center(
        child: Text(
          "Upscale image",
          style: TextStyle(color: Colors.green),
        ),
      ),
    ),
  );
}
