import 'package:flutter/material.dart';

final List<Map<String, dynamic>> experience = [
  {
    "title": "Founding Engineer",
    "company": "TarotX.vn",
    "date": "Aug 2024 - Present",
    "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MongoDB", "Tailwind CSS", "OpenAI"],
    "description": """TarotX.vn is Vietnam's pioneering digital platform for online Tarot sessions, enabling users to connect with verified Tarot readers, book flexible appointments, and experience interactive, multimedia readings.

Key Responsibilities & Achievements:

• Built the entire platform end-to-end (frontend + backend) as a solo engineer.  
• Developed frontend with React.js & Next.js; backend with Express.js; monorepo with pnpm; database with MongoDB.  
• Implemented features such as AI-powered Tarot readings, verified reader profiles, and flexible online booking.  
• Designed, tested, deployed, and maintained the full system independently.  
• Established a scalable technical foundation for future business growth.""",
    // "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MongoDB", "Tailwind CSS"],
  },
  {
    "title": "Full-Stack Web Developer",
    "company": "Emolyze Tech",
    "date": "Sep 2021 - May 2024",
    "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MySQL"],
    "description": """Main responsibilities:
• Develop features from frontend to backend following designs.
• Maintain code quality & fix bugs.
• Write documents.""",
    // "techStacks": ["TypeScript", "React.js", "Express.js", "MySQL", "Flutter"],
    "isLast": true,
  },
];
class EducationNExperience extends StatelessWidget {
  const EducationNExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experience.map((e) => Stack(
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
                        Text(e["date"] ?? "", style: const TextStyle(color: Color(0xFF8697A8)),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(text: "Technologies: ", style: const TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: e["techStacks"]?.join(", ") ?? "")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(e["description"] ?? ""),
                        ),
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(48, 76, 253, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(48, 76, 253, 0.25),
                          spreadRadius: 3,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -12,
                  left: 25,
                  child: Text("${e["title"]} | ${e["company"] ?? ""}", style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            )).toList(),
          ),
        ),
      ],
    );
  }
}