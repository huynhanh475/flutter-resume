import 'package:flutter/material.dart';

final List<String> skills = [
  "JavaScript / Typescript (React + Node).",
  "Flutter (Chart language).",
  "AWS, GCP.",
  "Git / CI, CD.",
];

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills.take(skills.length ~/ 2).map((skill) => SkillItem(skill: skill)).toList(),
              ),
            ),
            // const SizedBox(width: 20),
            Flexible(
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: skills.skip(skills.length ~/ 2).map((skill) => SkillItem(skill: skill)).toList(),
              ),
            ),
            // const SizedBox(width: 20),
            
          ],
        )
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.skill});
  final String skill;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: const Color(0xFF304CFD),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(48, 76, 253, 0.25),
                spreadRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
        const SizedBox(width: 20),
        Text(skill),
      ],
    );
  }
}