import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(28, 20, 28, 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          const Text('S', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
          const SizedBox(width: 12), const Text('My E-Wallet', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800)), const Spacer(), IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 31)), IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz, size: 30)),
        ]),
        const SizedBox(height: 22),
        _walletCard(),
        const SizedBox(height: 28),
        Row(children: const [Text('Transaction History', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)), Spacer(), Text('See All', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700))]),
        const SizedBox(height: 10),
        _transaction('Lawson Chair', 'Dec 15, 2024 | 10:00 AM', '\$120', true, Icons.chair_alt),
        _transaction('Top Up Wallet', 'Dec 14, 2024 | 16:42 PM', '\$400', false, Icons.account_balance_wallet),
        _transaction('Parabolic Reflector', 'Dec 14, 2024 | 11:39 AM', '\$170', true, Icons.light),
        _transaction('Mini Wooden Table', 'Dec 13, 2024 | 14:46 PM', '\$165', true, Icons.table_restaurant),
        _transaction('Top Up Wallet', 'Dec 12, 2024 | 09:27 AM', '\$300', false, Icons.account_balance_wallet),
      ]),
    );
  }

  Widget _walletCard() => Container(height: 282, width: double.infinity, padding: const EdgeInsets.all(24), decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), gradient: const LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF444444), Color(0xFF161616)]), boxShadow: [BoxShadow(color: Colors.black.withOpacity(.15), blurRadius: 20, offset: const Offset(0, 10))]), child: Stack(children: [
    const Positioned(top: 4, left: 0, child: Text('Andrew Ainsley', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700))),
    const Positioned(top: 47, left: 0, child: Text('•••• •••• •••• 3629', style: TextStyle(color: Colors.white, fontSize: 15))),
    const Positioned(top: 8, right: 0, child: Text('VISA', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic))),
    const Positioned(top: 75, left: 0, child: Text('Your balance', style: TextStyle(color: Colors.white, fontSize: 15))),
    const Positioned(top: 105, left: 0, child: Text('\$9,379', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w500))),
    Positioned(bottom: 20, right: 0, child: Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(28)), child: const Row(children: [Icon(Icons.download, size: 18), SizedBox(width: 9), Text('Top Up', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))]))),
  ]));

  Widget _transaction(String title, String date, String amount, bool order, IconData icon) => Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: Row(children: [Container(width: 58, height: 58, decoration: BoxDecoration(color: const Color(0xFFF0F0F2), shape: BoxShape.circle), child: Icon(icon, color: const Color(0xFF333333), size: 29)), const SizedBox(width: 16), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)), const SizedBox(height: 5), Text(date, style: const TextStyle(fontSize: 14, color: Color(0xFF8A8A8F)))])), Column(crossAxisAlignment: CrossAxisAlignment.end, children: [Text(amount, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)), const SizedBox(height: 5), Row(children: [Text(order ? 'Orders' : 'Top Up', style: const TextStyle(color: Color(0xFF77777D))), const SizedBox(width: 5), Icon(order ? Icons.arrow_upward : Icons.arrow_downward, size: 16, color: Colors.white, shadows: [Shadow(color: order ? Colors.redAccent : Colors.blueAccent, blurRadius: 8)])])])]));
}
