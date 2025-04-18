import 'package:flutter/material.dart';

class Booktrip extends StatelessWidget {
  const Booktrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Image.asset('assets/placeholder.png')),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hello Munxe"),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  color: Colors.greenAccent.shade700,
                                ),
                                const SizedBox(width: 5),
                                const Text("Location"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.refresh),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: Colors.grey.shade500),
                    suffixIcon: Icon(
                      Icons.display_settings,
                      color: Colors.grey.shade500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildIconCard(Icons.home_work_outlined),
                    _buildIconCard(Icons.flight_outlined),
                    _buildIconCard(Icons.bus_alert_outlined),
                    _buildIconCard(Icons.train),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "This is Random Text",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/pp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.linked_camera_sharp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconCard(IconData icon) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Center(
        child: Icon(
          icon,
          size: 40,
          color: Colors.greenAccent.shade700,
        ),
      ),
    );
  }
}
