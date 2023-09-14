import 'package:al2_2023/layouts_screen/bubble.dart';
import 'package:flutter/material.dart';

class LayoutsScreen extends StatelessWidget {
  const LayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final availableHeight = constraints.maxHeight;
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      color: Colors.yellow,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(color: Colors.pink),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 10,
                                  runSpacing: 5,
                                  children: List.generate(24, (index) => const Bubble()),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.blue,
                                height: double.infinity,
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Bubble(),
                                      SizedBox(width: 10),
                                      Bubble(),
                                      Spacer(),
                                      Bubble(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(color: Colors.orange),
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
