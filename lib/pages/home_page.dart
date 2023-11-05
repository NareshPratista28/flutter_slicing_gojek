import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/Header.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xffe8e8e8)),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/search.svg",
                            // ignore: deprecated_member_use
                            color: dark1,
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cari layanan, makanan, dan tujuan",
                            style: regular14.copyWith(color: dark3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35 / 2)),
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset('assets/images/Avatar.png')),
                        Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35 / 2),
                                  color: const Color(0XFFD1E7EE)),
                              clipBehavior: Clip.hardEdge,
                              child: SvgPicture.asset('assets/icons/goclub.svg',
                                  color: blue3),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
