import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 18, 24, 28),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 6, 10, 24),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [Container(width: 46, height: 46, decoration: BoxDecoration(color: const Color(0xFFE8EBFF), borderRadius: BorderRadius.circular(13)), child: const Icon(Icons.chevron_left, color: Color(0xFF6170FF), size: 30)), const SizedBox(width: 18), const Text('3D Design Basic', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800))]),
          const SizedBox(height: 22),
          ClipRRect(borderRadius: BorderRadius.circular(2), child: Image.asset('assets/images/course_3d.jpg', height: 270, width: double.infinity, fit: BoxFit.cover)),
          const SizedBox(height: 20),
          Row(children: [
            _pill(Icons.people_alt_outlined, '4.569'), const SizedBox(width: 12), _pill(Icons.star_border, '4.9'), const SizedBox(width: 12), Container(padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10), decoration: BoxDecoration(color: const Color(0xFFE7E8FF), borderRadius: BorderRadius.circular(12)), child: const Text('Best Seller', style: TextStyle(color: Color(0xFF5562FF), fontWeight: FontWeight.w600))),
          ]),
          const SizedBox(height: 28),
          const Text('3D Design Basic', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
          const SizedBox(height: 22),
          const Text('In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.', style: TextStyle(fontSize: 17, height: 1.55)),
          const SizedBox(height: 30),
          const Row(children: [Text('24 Lessons (20 hours)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF30405A))), Spacer(), Text('See all', style: TextStyle(fontSize: 17, color: Color(0xFF4459FF), fontWeight: FontWeight.w700))]),
          const SizedBox(height: 18),
          Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 18, offset: const Offset(0, 8))]), child: Row(children: [ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset('assets/images/course_3d.jpg', width: 72, height: 72, fit: BoxFit.cover)), const SizedBox(width: 18), const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Introduction to 3D', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)), SizedBox(height: 8), Text('20 mins', style: TextStyle(fontSize: 13))])), const Icon(Icons.check_circle_outline, color: Color(0xFF5360FF), size: 29)])),
          const SizedBox(height: 52),
          Container(height: 68, width: double.infinity, decoration: BoxDecoration(color: const Color(0xFF5659FF), borderRadius: BorderRadius.circular(34)), child: const Center(child: Text('Enroll - \$24.99', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700)))),
        ]),
      ),
    );
  }

  Widget _pill(IconData icon, String text) => Container(padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10), decoration: BoxDecoration(color: const Color(0xFFE8EBFF), borderRadius: BorderRadius.circular(12)), child: Row(children: [Icon(icon, color: const Color(0xFF5360FF), size: 18), const SizedBox(width: 7), Text(text, style: const TextStyle(color: Color(0xFF5360FF), fontWeight: FontWeight.w600))]));
}
