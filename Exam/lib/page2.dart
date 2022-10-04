import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      debugShowCheckedModeBanner: false,
      home: Exam(),
    ),
  );
}

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.orange.shade100),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome back',
                    ),
                    Text(
                      'Minie Lehmann',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                    width: 60,
                    image: AssetImage(
                      'images/person.jpg',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(18.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'August',
                        style: TextStyle(color: Colors.orangeAccent),
                      ),
                      Spacer(),
                      Text(
                        'Due in 5 days',
                        style: TextStyle(color: Colors.orangeAccent),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '€431.90',
                    style:
                        TextStyle(color: Colors.orange.shade100, fontSize: 40),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade200,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Pay now',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 188,
                  height: 150,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 188,
                  height: 150,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: 188,
                  height: 150,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 188,
                  height: 150,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.orange.shade200,
                  borderRadius: BorderRadius.circular(18.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Andrea Cotes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '5 min ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Problem with hot water',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.black,
        child: Image(
          image: AssetImage("images/cle.png"),
          height: 32,
          color: Colors.white,
        ),/*const Icon(
          Icons.handyman_sharp,
          color: Colors.white,
        ),*/
      ),
    );
  }
}
