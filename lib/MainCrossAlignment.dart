
import 'package:flutter/material.dart';

void main() {
  runApp(const AlignmentApp());
}

class AlignmentApp extends StatelessWidget {
  const AlignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlignmentPage(),
    );
  }
}

class AlignmentPage extends StatelessWidget {
  const AlignmentPage({super.key});

  static const Color green = Color(0xFF4CAF50);
  static const Color blue = Colors.blue;
  static const Color red = Colors.red;
  static const Color orange = Colors.orange;

  String alignmentName(Object alignment) {
    return alignment.toString().split('.').last;
  }

  Widget buildBox(Color color, {double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: const Center(
        child: Icon(
          Icons.star,
          color: Colors.white,
          size: 18,
        ),
      ),
    );
  }

  Widget buildMainAxisExample(
    MainAxisAlignment alignment, {
    required bool isRow,
  }) {
    final name = alignmentName(alignment);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MainAxisAlignment.$name',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: isRow ? 48 : 130,
            width: double.infinity,
            color: Colors.black12,
            child: isRow
                ? Row(
                    mainAxisAlignment: alignment,
                    children: [
                      buildBox(red, width: 35, height: 30),
                      buildBox(blue, width: 35, height: 30),
                      buildBox(green, width: 35, height: 30),
                    ],
                  )
                : Column(
                    mainAxisAlignment: alignment,
                    children: [
                      buildBox(red, width: 90, height: 25),
                      buildBox(blue, width: 90, height: 25),
                      buildBox(green, width: 90, height: 25),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildCrossAxisExample(
    CrossAxisAlignment alignment, {
    required bool isRow,
  }) {
    final name = alignmentName(alignment);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CrossAxisAlignment.$name',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 75,
            width: double.infinity,
            color: Colors.black12,
            child: isRow
                ? Row(
                    crossAxisAlignment: alignment,
                    textBaseline: alignment ==
                            CrossAxisAlignment.baseline
                        ? TextBaseline.alphabetic
                        : null,
                    children: alignment ==
                            CrossAxisAlignment.baseline
                        ? const [
                            Text(
                              'Small',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              'Medium',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              'Large',
                              style: TextStyle(
                                fontSize: 28,
                                color: green,
                              ),
                            ),
                          ]
                        : [
                            buildBox(
                              red,
                              width: 45,
                              height: alignment ==
                                      CrossAxisAlignment.stretch
                                  ? null
                                  : 25,
                            ),
                            buildBox(
                              blue,
                              width: 45,
                              height: alignment ==
                                      CrossAxisAlignment.stretch
                                  ? null
                                  : 45,
                            ),
                            buildBox(
                              green,
                              width: 45,
                              height: alignment ==
                                      CrossAxisAlignment.stretch
                                  ? null
                                  : 60,
                            ),
                          ],
                  )
                : Column(
                    crossAxisAlignment: alignment,
                    children: [
                      buildBox(
                        red,
                        width: alignment ==
                                CrossAxisAlignment.stretch
                            ? null
                            : 55,
                        height: 20,
                      ),
                      buildBox(
                        blue,
                        width: alignment ==
                                CrossAxisAlignment.stretch
                            ? null
                            : 100,
                        height: 20,
                      ),
                      buildBox(
                        green,
                        width: alignment ==
                                CrossAxisAlignment.stretch
                            ? null
                            : 145,
                        height: 20,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: blue,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  List<Widget> buildMainAxisExamples(bool isRow) {
    const alignments = [
      MainAxisAlignment.center,
      MainAxisAlignment.spaceAround,
      MainAxisAlignment.spaceBetween,
      MainAxisAlignment.spaceEvenly,
      MainAxisAlignment.start,
      MainAxisAlignment.end,
    ];

    return [
      buildSectionTitle(
        isRow
            ? 'ROW - MainAxisAlignment'
            : 'COLUMN - MainAxisAlignment',
      ),
      for (final alignment in alignments)
        buildMainAxisExample(
          alignment,
          isRow: isRow,
        ),
    ];
  }

  List<Widget> buildCrossAxisExamples(bool isRow) {
    const alignments = [
      CrossAxisAlignment.start,
      CrossAxisAlignment.end,
      CrossAxisAlignment.center,
      CrossAxisAlignment.stretch,
    ];

    return [
      buildSectionTitle(
        isRow
            ? 'ROW - CrossAxisAlignment'
            : 'COLUMN - CrossAxisAlignment',
      ),
      if (isRow)
        buildCrossAxisExample(
          CrossAxisAlignment.baseline,
          isRow: true,
        ),
      for (final alignment in alignments)
        buildCrossAxisExample(
          alignment,
          isRow: isRow,
        ),
      if (!isRow)
        const Padding(
          padding: EdgeInsets.all(12),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BOBO',
          style: TextStyle(fontSize: 12),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        toolbarHeight: 44,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ...buildMainAxisExamples(true),
          ...buildMainAxisExamples(false),
          ...buildCrossAxisExamples(true),
          ...buildCrossAxisExamples(false),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
