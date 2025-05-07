import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Q5());
}

class Q5 extends StatelessWidget {
  const Q5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MoodPreferenceScreen(),
    );
  }
}

class MoodPreferenceScreen extends StatefulWidget {
  const MoodPreferenceScreen({super.key});

  @override
  State<MoodPreferenceScreen> createState() => _MoodPreferenceScreenState();
}

class _MoodPreferenceScreenState extends State<MoodPreferenceScreen> {
  final List<Map<String, String>> artists = [
    {
      "name": "Taylor Swift",
      "id": "06HL4z0CvFAxyc27GXpf02",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb02b9d6b2e5f7f5c6f1c8f8f8"
    },
    {
      "name": "Drake",
      "id": "3TVXtAsR1Inumwj472S9r4",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb4c4c4c4c4c4c4c4c4c4c4c4c"
    },
    {
      "name": "Lady Gaga",
      "id": "1HY2Jd0NmPuamShAr6KMms",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb1c1c1c1c1c1c1c1c1c1c1c1c"
    },
    {
      "name": "Bad Bunny",
      "id": "4q3ewBCX7sLwd24euuV69X",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb2a2a2a2a2a2a2a2a2a2a2a2a"
    },
    {
      "name": "Coldplay",
      "id": "4gzpq5DPGxSnKTe4SA8HAU",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb3e3e3e3e3e3e3e3e3e3e3e3e"
    },
    {
      "name": "Rihanna",
      "id": "5pKCCKE2ajJHZ9KAiaK11H",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb9c9c9c9c9c9c9c9c9c9c9c9c"
    },
    {
      "name": "Ariana Grande",
      "id": "66CXWjxzNUsdJxJ2JdwvnR",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb6c6c6c6c6c6c6c6c6c6c6c6c"
    },
    {
      "name": "Dua Lipa",
      "id": "6M2wZ9GZgrQXHCFfjv46we",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb8c8c8c8c8c8c8c8c8c8c8c8c"
    },
    {
      "name": "Ed Sheeran",
      "id": "6eUKZXaKkcviH0Ku9w2n3V",
      "image":
          "https://i.scdn.co/image/ab6761610000e5eb5c5c5c5c5c5c5c5c5c5c5c5c"
    },
  ];

  final Set<String> selectedIds = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.angleLeft,
          color: Color(0xFF9188F7),
          size: 32,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Skip",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat",
                    color: Colors.grey)),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Montserrat"),
                  ),
                  TextSpan(
                    text: 'MoodBeats',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9188F7),
                        fontFamily: "Montserrat"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Who is your favorite artist?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: artists.map((artist) {
                  final isSelected = selectedIds.contains(artist['id']);
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedIds.remove(artist['id']);
                        } else {
                          selectedIds.add(artist['id']!);
                        }
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFF9188F7)
                                  : Colors.transparent,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(artist['image']!),
                            radius: 40,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          artist['name']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print("Selected IDs: $selectedIds");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
              child: const Text("Next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat")),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
