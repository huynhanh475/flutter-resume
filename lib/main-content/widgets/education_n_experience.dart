import 'package:flutter/material.dart';

final List<Map<String, dynamic>> experience = [
  {
    "title": "Founding Engineer",
    "company": "TarotX.vn",
    "date": "2024-2025",
    "description": """TarotX.vn is Vietnam's pioneering digital platform for online Tarot sessions, enabling users to connect with verified Tarot readers, book flexible appointments, and experience interactive, multimedia readings.

Key Responsibilities & Achievements:

•    Full-stack architecture design & implementation: Developed the entire system from scratch, covering both frontend and backend within a monorepo architecture using pnpm, ensuring consistency and maintainability.
•    Frontend development: Built responsive and high-performance user interfaces with React.js and Next.js, enabling seamless booking, session participation, and real-time reader–customer interactions.
•    Backend development: Designed and deployed scalable Express.js APIs, managing business logic, authentication, and secure session handling.
•    Database management: Leveraged MongoDB for flexible, high-performance storage of user profiles, session data, booking records, and AI-powered Tarot insights.
•    AI-powered features: Integrated digital Tarot reading sessions enhanced by AI, providing customers with engaging, semi-automated experiences alongside live reader sessions.
•    Product lifecycle ownership: Independently managed the complete development pipeline — from system design, coding, and testing to deployment and monitoring.""",
    // "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MongoDB", "Tailwind CSS"],
  },
  {
    "title": "Freelance Software Engineer",
    "company": "YesSirStudio",
    "date": "2022-2024",
    "description": """- """,
    // "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MongoDB", "Tailwind CSS"],
  },
  {
    "title": "Web Developer Intern",
    "company": "Emolyze Tech",
    "date": "2021-2022",
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