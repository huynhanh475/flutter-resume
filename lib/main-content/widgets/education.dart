import 'package:flutter/material.dart';

final List<Map<String, dynamic>> education = [
  {
    "title": "Bachelor of Science in Computer Science",
    "school": "Vietnamese-German University",
    "date": "2019-2023",
    "isLast": true,
  },
];
class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Education",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: education.map((e) => Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, bottom: e['isLast'] == true ? 0 : 25),
                  decoration: BoxDecoration(
                    border: e["isLast"] != true ? const Border(
                      left: BorderSide(
                        color: Color(0xFFF0F0F6),
                        width: 1,
                      ),
                    )
                    : null,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e["school"] ?? ""),
                        Text(e["date"] ?? "", style: const TextStyle(color: Color(0xFF8697A8)),),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8),
                        //   child: Text(e["description"] ?? ""),
                        // ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  left: -5,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(48, 76, 253, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(48, 76, 253, 0.25),
                          spreadRadius: 3,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -12,
                  left: 25,
                  child: Text(e["title"], style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            )).toList(),
          ),
        ),
      ],
    );
  }
}