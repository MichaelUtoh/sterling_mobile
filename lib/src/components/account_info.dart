import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDashboardCard extends StatefulWidget {
  const AccountDashboardCard({super.key});

  @override
  State<AccountDashboardCard> createState() => _AccountDashboardCardState();
}

class _AccountDashboardCardState extends State<AccountDashboardCard> {
  bool _isBalanceVisible = false;
  String _userBalance = '₦250000.00';

  void _showBalance() {
    setState(() {
      _isBalanceVisible = !_isBalanceVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.red[800],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          style: BorderStyle.solid,
          color: const Color(0xFFE57373),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Savings Account',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '002227318 - Michael Utoh',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                Text(
                  _isBalanceVisible ? "₦250000.00" : "₦********",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                ),
                const Expanded(child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    _showBalance();
                  },
                  child: Icon(
                    _isBalanceVisible
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: Colors.white,
                    opticalSize: 3,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
