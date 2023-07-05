import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zonerapp/Screens/InfoDetail.dart';
import '../Widget/FilterBar1.dart';
import '../Widget/FilterBar2.dart';
import '../Widget/filterBar3.dart';
import '../Widget/image_slider.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  // final Filter fil = Filter();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 10, 0),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 10, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'INFO',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                const Text('Filter:'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.88,
                  height: 38,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [Filter(), Filter2(), Filter3()],
                    ),
                  ),
                )
              ],
            ),
          ),
          const AllCatagoriesList()
        ]),
      ),
    );
  }
}

class AllCatagoriesList extends StatelessWidget {
  const AllCatagoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> Imgurl = ['Assets/Images/img1.jpg', 'Assets/Images/img2.jpg'];
    final CarouselController controller = CarouselController();
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.95,
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Container(
            ///   padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.528,
            decoration: const BoxDecoration(
                color: Color.fromARGB(192, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(3, 2),
                  )
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                  child: Stack(
                    // clipBehavior: Clip.antiAlias,
                    alignment: Alignment.centerRight,
                    //  fit: StackFit.passthrough,
                    children: [
                      CarouselSlider(
                        items: [ImageSlider(Imgurl.first)],
                        carouselController: controller,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 180,
                          enlargeCenterPage: true,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          color: Colors.white.withOpacity(0.4),
                        ),
                        width: 30,
                        height: 180,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            controller.nextPage();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 13, 0),
                  child: Column(
                    children: const [
                      Text('The easiest way to recover deleted files',
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'If you\'re hit by such a mishap, don\'t panic. If you keep calm and act fast, you might be able to get your files back. In fact, you can explore a few different methods on your quest to restore your data. from tools built into your operating system to third-party apps you can download for free. here\'s how to resure those files',
                          style: TextStyle(
                            fontSize: 14.5,
                          )),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    margin: const EdgeInsets.all(5),

                    ///   height: 15,
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text(
                          '210',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                          size: 20,
                        ),
                        Text('4', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  InfoDetail('Assets/Images/img1.jpg'))));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      margin: const EdgeInsets.only(top: 0, left: 5),
                      color: const Color(0xFFFAB631),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        'Read More',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
