import 'package:flutter/material.dart';

class AtlantisScreen extends StatelessWidget {
  const AtlantisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          _circleIcon(Icons.arrow_back),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, size: 30)),
        ]),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: Container(
            height: 380,
            width: double.infinity,
            color: const Color(0xFF0BBCE9),
            child: Stack(children: [
              Positioned.fill(child: Image.asset('assets/images/atlantis.png', fit: BoxFit.cover)),
              Positioned(left: 18, top: 22, child: Icon(Icons.waves, color: Colors.white.withOpacity(.35), size: 62)),
              Positioned(bottom: 24, left: 0, right: 0, child: Center(child: _playButton())),
            ]),
          ),
        ),
        const SizedBox(height: 18),
        Text('Secrets of Atlantis', style: const TextStyle(fontSize: 29, fontWeight: FontWeight.w800, color: Color(0xFF11121A))),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(color: const Color(0xFFFF4B0B), borderRadius: BorderRadius.circular(24)),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
          child: const Text('Follow', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 28),
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(color: const Color(0xFF46348E), borderRadius: BorderRadius.circular(24)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(width: 44, height: 44, decoration: const BoxDecoration(color: Color(0xFFFF1268), shape: BoxShape.circle), child: const Icon(Icons.person, color: Colors.white)),
            const SizedBox(width: 14),
            const Expanded(child: Text('The hidden secrets of Atlantis are waiting to be discovered. Join the adventure and explore the ancient world.', style: TextStyle(color: Colors.white, fontSize: 16, height: 1.45))),
            const SizedBox(width: 8),
            Column(children: const [Icon(Icons.favorite, color: Color(0xFFFF4B4B)), SizedBox(height: 3), Text('4.8', style: TextStyle(color: Colors.white))]),
          ]),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          decoration: BoxDecoration(color: const Color(0xFFFFD400), borderRadius: BorderRadius.circular(24)),
          child: const Row(children: [Icon(Icons.group, size: 30), SizedBox(width: 14), Expanded(child: Text('Invite your friends to join', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))), Icon(Icons.chevron_right)]),
        ),
      ]),
    );
  }

  Widget _playButton() => Container(width: 70, height: 70, decoration: const BoxDecoration(color: Color(0xFFFF5A00), shape: BoxShape.circle), child: const Icon(Icons.play_arrow, color: Colors.white, size: 38));
  Widget _circleIcon(IconData icon) => Container(width: 48, height: 48, decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle), child: Icon(icon, size: 25));
}
