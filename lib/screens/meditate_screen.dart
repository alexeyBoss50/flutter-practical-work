import 'package:flutter/material.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(28, 18, 28, 28),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 24),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(padding: EdgeInsets.only(left: 2, bottom: 18), child: Text('Meditate', style: TextStyle(fontSize: 23, color: Color(0xFFB4B4B7), fontWeight: FontWeight.w500))),
          ClipRRect(borderRadius: BorderRadius.circular(22), child: Image.asset('assets/images/meditate_reference.png', fit: BoxFit.cover, alignment: Alignment.topCenter, height: 330, width: double.infinity)),
          const SizedBox(height: 24),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 4), child: Text('Peter Mach', style: TextStyle(fontSize: 16, color: Color(0xFF88888D)))),
          const SizedBox(height: 8),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 4), child: Text('Mind Deep Relax', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800))),
          const SizedBox(height: 14),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 4), child: Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.', style: TextStyle(fontSize: 18, height: 1.45))),
          const SizedBox(height: 26),
          Container(height: 68, width: double.infinity, decoration: BoxDecoration(color: const Color(0xFF10A6A8), borderRadius: BorderRadius.circular(34)), child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.play_arrow_outlined, color: Colors.white, size: 30), SizedBox(width: 10), Text('Play Next Session', style: TextStyle(color: Colors.white, fontSize: 20))])),
          const SizedBox(height: 26),
          _session('Sweet Memories', 'December 29 Pre-Launch', const Color(0xFF367FEA)),
          _session('A Day Dream', 'December 29 Pre-Launch', const Color(0xFF10A6A8)),
          _session('Mind Explore', 'December 29 Pre-Launch', const Color(0xFFFF9A32)),
        ]),
      ),
    );
  }

  Widget _session(String title, String date, Color color) => Container(padding: const EdgeInsets.symmetric(vertical: 14), decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFE9E9E9)))), child: Row(children: [Container(width: 58, height: 58, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(14)), child: const Icon(Icons.play_arrow_outlined, color: Colors.white, size: 30)), const SizedBox(width: 16), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)), const SizedBox(height: 4), Text(date, style: const TextStyle(fontSize: 16, color: Color(0xFF8D8D91)))])), const Text('•••', style: TextStyle(color: Color(0xFFD1D1D1), fontSize: 20))]));
}
