import 'package:demo/model/data_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("img/me.jpg"))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    "Welcome back",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "Mahsu033w",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.transparent),
              child: const Icon(Icons.notifications, color: Colors.grey),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(children: [
          searchBar(),
          suggestionWidgets(context),
          bestTours(context)
        ]),
      ),
    );
  }
}

Widget searchBar() {
  return Container(
    margin: const EdgeInsets.only(right: 16, left: 16, top: 20, bottom: 20),
    child: TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF131316),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.tune,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.grey)),
    ),
  );
}

Widget suggestionWidgets(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(
              "Suggestions for you",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            Spacer(),
            Text(
              "See all",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 160,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 20),
            itemCount: dataHome.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                width: 140,
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(dataHome[index].image),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          margin: const EdgeInsets.only(right: 10, top: 10),
                          width: 45,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                          child: Row(
                            children: [
                              Text(
                                dataHome[index].rate.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Icon(
                                Icons.star,
                                size: 14,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataHome[index].title,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                              Text(
                                dataHome[index].location,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      )
    ],
  );
}

Widget bestTours(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 25, bottom: 20),
        child: Text(
          "Features",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.4,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
            // physics:  NeverScrollableScrollPhysics(),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFF131316),
                    borderRadius: BorderRadius.circular(15)),
                height: 112,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(dataHome[index].image,
                          width: 88, height: 88, fit: BoxFit.cover),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6, top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  dataHome[index].title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Spacer(),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  margin:
                                      const EdgeInsets.only(right: 10, top: 10),
                                  width: 45,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade900),
                                  child: Row(
                                    children: [
                                      Text(
                                        dataHome[index].rate.toString(),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Colors.yellow,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey.shade800,
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  dataHome[index].date.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  color: Colors.grey.shade800,
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  dataHome[index].pay,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  " /day",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 11),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  dataHome[index].contryName,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      )
    ],
  );
}
