import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final List<Map<String, dynamic>> experience = [
  {
    "title": "Founding Engineer",
    "company": "AI Recruiter",
    "date": "Aug 2025 - Present",
    "techStacks": ["TypeScript", "React.js", "Next.js", "Express.js", "MongoDB", "Tailwind CSS", "OpenAI"],
    "description": """TarotX.vn is Vietnam's pioneering digital platform for online Tarot sessions, enabling users to connect with verified Tarot readers, book flexible appointments, and experience interactive, multimedia readings.

Key Responsibilities & Achievements:

• Built the entire platform end-to-end (frontend + backend) as a solo engineer.  
• Developed frontend with React.js & Next.js; backend with Express.js; monorepo with pnpm; database with MongoDB.  
• Implemented features such as AI-powered Tarot readings, verified reader profiles, and flexible online booking.  
• Designed, tested, deployed, and maintained the full system independently.  
• Established a scalable technical foundation for future business growth.""",
    "gallery": [
      "https://placehold.co/600x400.png",
      "https://placehold.co/600x500.png",
      "https://placehold.co/600x600.png",
      "https://placehold.co/600x700.png",
      "https://placehold.co/600x800.png",
      "https://placehold.co/600x900.png",
    ],
  },
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
    "gallery": [
      "https://placehold.co/600x400/png",
      "https://placehold.co/600x400.png",
    ],
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

  void _showImageDialog(BuildContext context, List<String> images, int initialIndex) {
    if (images.isEmpty) return;

    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.85),
      builder: (dialogContext) {
        int currentIndex = initialIndex;

        void showNext(StateSetter setState) {
          if (images.length < 2) return;
          setState(() {
            currentIndex = (currentIndex + 1) % images.length;
          });
        }

        void showPrevious(StateSetter setState) {
          if (images.length < 2) return;
          setState(() {
            currentIndex = (currentIndex - 1 + images.length) % images.length;
          });
        }

        return StatefulBuilder(
          builder: (context, setState) {
            return Material(
              color: Colors.transparent,
              child: Focus(
                autofocus: true,
                onKey: (node, event) {
                  if (event is RawKeyDownEvent) {
                    if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
                      showNext(setState);
                      return KeyEventResult.handled;
                    }
                    if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
                      showPrevious(setState);
                      return KeyEventResult.handled;
                    }
                  }
                  return KeyEventResult.ignored;
                },
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: Container(color: Colors.transparent),
                      ),
                    ),
                    Center(
                      child: InteractiveViewer(
                        clipBehavior: Clip.none,
                        child: Image.network(
                          images[currentIndex],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    if (images.length > 1)
                      Positioned(
                        left: 24,
                        top: 0,
                        bottom: 0,
                        child: Center(
                          child: IconButton(
                            onPressed: () => showPrevious(setState),
                            iconSize: 36,
                            color: Colors.white,
                            icon: const Icon(Icons.chevron_left),
                          ),
                        ),
                      ),
                    if (images.length > 1)
                      Positioned(
                        right: 24,
                        top: 0,
                        bottom: 0,
                        child: Center(
                          child: IconButton(
                            onPressed: () => showNext(setState),
                            iconSize: 36,
                            color: Colors.white,
                            icon: const Icon(Icons.chevron_right),
                          ),
                        ),
                      ),
                    Positioned(
                      top: 24,
                      right: 24,
                      child: IconButton(
                        onPressed: () => Navigator.of(dialogContext).pop(),
                        icon: const Icon(Icons.close, color: Colors.white, size: 28),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

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
            children: experience.map((e) {
              final gallery = (e["gallery"] as List<dynamic>?)?.cast<String>();
              return Stack(
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
                                  const TextSpan(text: "Technologies: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: e["techStacks"]?.join(", ") ?? "")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(e["description"] ?? ""),
                          ),
                          if (gallery?.isNotEmpty ?? false) ...[
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 12,
                              runSpacing: 12,
                              children: List.generate(
                                gallery!.length,
                                (index) {
                                  final url = gallery[index];
                                  return MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () => _showImageDialog(context, gallery, index),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.network(
                                            url,
                                            width: 150,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                },
                              ),
                            ),
                          ],
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
                    child: Text("${e["title"]} | ${e["company"] ?? ""}", style: Theme.of(context).textTheme.titleMedium),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}