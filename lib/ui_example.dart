import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});

  serviceCard({required IconData icon, required String text}) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black54,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
        child: Column(
          spacing: 5,
          children: [
            Icon(icon, color: Colors.green.shade600, size: 28),
            Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              spacing: 20,
              children: [
                // AppBar Design
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 15,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10000),
                            child: Image.network(
                              "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              "Hello Prabha!",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.green.shade300,
                                ),
                                Text(
                                  "Gaindakot",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Badge(
                      label: Text("1", style: TextStyle(fontSize: 10)),
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 35,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
                //  Search Button
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(240, 241, 240, 1),
                      filled: true,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey.shade500,
                      ),
                      suffixIcon: Icon(
                        Icons.filter_list_rounded,
                        color: Colors.grey.shade500,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                // Services Section
                Row(
                  spacing: 5,
                  children: [
                    serviceCard(icon: Icons.house_outlined, text: "Hotels"),
                    serviceCard(icon: Icons.flight, text: "Flight"),
                    serviceCard(icon: Icons.bus_alert, text: "Bus"),
                    serviceCard(icon: Icons.train, text: "Train"),
                  ],
                ),

                // Banner Card
                Container(
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [Colors.green.shade300, Colors.green.shade600],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 5,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Title will be here",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              "Subtitle wil be here subtitle will be here sub title will be here",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Image.network(
                        "https://static.vecteezy.com/system/resources/previews/045/729/459/non_2x/a-young-man-stands-with-arms-outstretched-holding-multiple-shopping-bags-he-is-looking-at-the-camera-with-a-neutral-expression-png.png",
                        width: 170,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 49,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Image.asset("assets/images/hotel.png"),
                            Text(
                              "Hotels",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Image.asset("assets/images/hotel.png"),
                            Text(
                              "Resorts",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 200,
                //   decoration: BoxDecoration(color: Colors.red),
                //   child: Stack(
                //     children: [
                //       Container(
                //         width: 50,
                //         height: 50,
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Colors.green,
                //         ),
                //       ),
                //       Positioned(
                //         right: 0,
                //         child: Container(
                //           width: 50,
                //           height: 50,
                //           decoration: BoxDecoration(
                //             shape: BoxShape.circle,
                //             color: Colors.amber,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              child: Image.network(
                                "https://plus.unsplash.com/premium_vector-1697729804286-7dd6c1a04597?q=80&w=1370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
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
}