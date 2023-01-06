import 'package:flutter/material.dart';
import 'package:flutter_kuytrip_app/detail_screen.dart';
import 'package:flutter_kuytrip_app/model/model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const Map<String, dynamic> data = {
    "category": [
      {"title": "Danau", "image": "assets/image/candi_tengah_laut.jpg"},
      {"title": "Gunung", "image": "assets/image/candi_gunung.jpg"},
      {"title": "Pantai", "image": "assets/image/candi_atas_laut.jpg"},
      {"title": "Desa", "image": "assets/image/gerbang_tengah_laut.jpg"}
    ],
    "top_destinasi": [
      {
        "tempat": "Pantai Ubud",
        "lokasi": "Bali, Indonesia",
        "image": "assets/image/candi_atas_laut.jpg"
      },
      {
        "tempat": "Gunung Fuji",
        "lokasi": "Nganjuk, Jepang",
        "image": "assets/image/gerbang_gunung_fuji.jpg"
      }
    ]
  };
  Future<KuyTripModel> transaction() async {
    final kuy = KuyTripModel.fromJson(data);
    return kuy;
  }

  @override
  Widget build(BuildContext context) {
    transaction();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 200,
                  width: 280,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/Ellipse 2.png',
                          ),
                          fit: BoxFit.cover)),
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 37, bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              'assets/svg/Drawer.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 3, color: Colors.blueAccent),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/image/user_image.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Hey Jono',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: const Color(0xff686868)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Jelajahi dan Temukan\nTempat Favorit mu Di Dunia',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 48,
                            width: 268,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromRGBO(104, 104, 104, 0.2)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.search,
                                    size: 24,
                                    color: Color.fromRGBO(104, 104, 104, 0.2),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text('Search',
                                      style: GoogleFonts.inter(
                                          fontSize: 13,
                                          color: const Color.fromRGBO(
                                              104, 104, 104, 0.2)))
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 56,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Color(0xff2B2B2B),
                            ),
                            child: SvgPicture.asset(
                              'assets/svg/Filter.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 69,
                            height: 29,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(94, 224, 224, 224)),
                            child: Center(
                              child: Text(
                                'All',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Nearby',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: const Color(0xffD2D2D2),
                            ),
                          ),
                          Text('Popular',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color(0xffD2D2D2),
                              )),
                          Text('Best Deals',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color(0xffD2D2D2),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33),
                      child: Text('Categories',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: SizedBox(
                        height: 113,
                        child: FutureBuilder<KuyTripModel>(
                          future: transaction(),
                          builder: (context, snapshot) {
                            return snapshot.connectionState ==
                                    ConnectionState.waiting
                                ? const Text('Waiting')
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: snapshot.data!.category!.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Container(
                                          width: 89,
                                          height: 113,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: AssetImage(snapshot.data!
                                                    .category![index].image),
                                                fit: BoxFit.cover),
                                          ),
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12),
                                              child: Text(
                                                snapshot.data!.category![index]
                                                    .title,
                                                style: GoogleFonts.inter(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 39),
                      child: Text(
                        'Top Destinasi',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: SizedBox(
                          height: 193,
                          child: FutureBuilder<KuyTripModel>(
                            future: transaction(),
                            builder: (context, snapshot) {
                              return snapshot.connectionState ==
                                      ConnectionState.waiting
                                  ? const Text('waiting')
                                  : ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          snapshot.data!.topDestinasi!.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 17),
                                          child: InkWell(
                                            onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DetailScreen()),
                                            ),
                                            child: Container(
                                              width: 194,
                                              height: 193,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  image: DecorationImage(
                                                      image: AssetImage(snapshot
                                                          .data!
                                                          .topDestinasi![index]
                                                          .image),
                                                      fit: BoxFit.cover)),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Container(
                                                    height: 48,
                                                    width: 178,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color:
                                                          const Color.fromARGB(
                                                              112,
                                                              220,
                                                              220,
                                                              220),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 13),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                snapshot
                                                                    .data!
                                                                    .topDestinasi![
                                                                        index]
                                                                    .tempat,
                                                                style:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .location_on_rounded,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 10,
                                                                  ),
                                                                  Text(
                                                                    snapshot
                                                                        .data!
                                                                        .topDestinasi![
                                                                            index]
                                                                        .lokasi,
                                                                    style: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          10,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          SvgPicture.asset(
                                                            'assets/svg/Love.svg',
                                                            height: 18,
                                                            width: 18,
                                                            fit: BoxFit
                                                                .scaleDown,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                            },
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
