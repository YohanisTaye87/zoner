import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading {
  Widget CardShimmer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: CustomShimmer.rectangular(
            height: MediaQuery.of(context).size.height * 0.24,
            // width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(
              // width: 5,
              ),
        ),
        Expanded(
          flex: 5,
          child: CustomShimmer.circular(
            height: MediaQuery.of(context).size.height * 0.24,
            // width: MediaQuery.of(context).size.width * 0.3,
          ),
        ),
      ],
    );
  }

  Widget homecartTag(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ],
                ),
              );
            },
            itemCount: 3),
      ),
    );
  }

  Widget home(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ],
                ),
              );
            },
            itemCount: 3),
      ),
    );
  }

  Widget homeA(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ],
                ),
              );
            },
            itemCount: 3),
      ),
    );
  }

  Widget detail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomShimmer.rectangular(
              width: MediaQuery.of(context).size.height * 1,
              height: MediaQuery.of(context).size.width * 0.4,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomShimmer.rectangular(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                CustomShimmer.rectangular(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomShimmer.rectangular(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomShimmer.rectangular(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 1,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomShimmer.rectangular(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 1,
            ),
            const SizedBox(
              height: 15,
            ),
            CardShimmer(context)
          ],
        ),
      ),
    );
  }

  Widget search() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 2, right: 2, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomShimmer.circular(
                    height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.03,
                      // width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.07,
                      // width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.01,
                      // width: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ],
                )),
                Expanded(
                    child: Center(
                  child: CustomShimmer.circular(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ))
              ],
            ),
          );
        });
  }

  Widget favorite(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CustomShimmer.circular(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              title: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomShimmer.rectangular(
                      height: MediaQuery.of(context).size.height * 0.02,
                      // width: MediaQuery.of(context).size.width * 0.005,
                    ),
                  ),
                  Expanded(flex: 2, child: Container())
                ],
              ),
              subtitle: CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              trailing: CustomShimmer.circular(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.06,
              ),
            );
          }),
    );
  }

  Widget profile(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget orderCard(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 7,
                child: CustomShimmer.rectangular(
                  height: MediaQuery.of(context).size.height * 0.20,
                  // width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                    // width: 5,
                    ),
              ),
              Expanded(
                flex: 5,
                child: CustomShimmer.circular(
                  height: MediaQuery.of(context).size.height * 0.24,
                  // width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget userOrders(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.07,
                width: double.infinity,
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int) {
                      return Row(
                        children: [
                          CustomShimmer.rectangular(
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomShimmer.rectangular(
                height: MediaQuery.of(context).size.height * 0.03,
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomShimmer.rectangular(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  CustomShimmer.rectangular(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          );
        });
  }
}

class CustomShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  // final bool? detail;

  // const CustomShimmer(
  //     {super.key,
  //     required this.width,
  //     required this.height,
  //     required this.shapeBorder,
  //     required this.detail});

  const CustomShimmer.rectangular(
      {this.width = double.infinity, required this.height})
      : shapeBorder = const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)));

  const CustomShimmer.circular({
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder(),
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(250, 233, 229, 229),
      highlightColor: const Color.fromARGB(255, 204, 203, 203),
      period: const Duration(seconds: 2),
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.grey[400]!,
          shape: shapeBorder,
        ),
      ),
    );
  }
}
