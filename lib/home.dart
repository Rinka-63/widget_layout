import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          leading: null,
          title: const Text(
            "The Journey",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildWireframeBox(aspectRatio: 1.0, hasCross: true),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: buildWireframeBox(aspectRatio: 1.0, hasCross: true),
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [buildIconBox(), buildIconBox(), buildIconBox()],
              ),
              const SizedBox(height: 75),

              Text(
                " Sering merasa jenuh dengan aplikasi to-do list yang membosankan? Cuma tumpukan teks tanpa makna? Saatnya beralih ke cara baru mengelola hari. Kami memperkenalkan The Journey, aplikasi produktivitas yang dirancang khusus untuk kamu yang ingin melihat setiap tugas sebagai langkah menuju pencapaian besar. ",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWireframeBox({
    required double aspectRatio,
    bool hasCross = false,
  }) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 198, 198, 198),
          border: Border.all(color: Colors.black, width: 1.5),
        ),
        child: hasCross
            ? Center(
                child: Text(
                  "Text",
                  style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 3, 3, 3),
                  ),
                ),
              )
            : null,
      ),
    );
  }

  Widget buildIconBox() {
    return Column(
      children: [
        Container(
          width: 75,
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 44, 115, 255),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Text",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }

  Widget buildTextLine({required double widthFactor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(height: 3, color: Colors.black),
      ),
    );
  }
}
