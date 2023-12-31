import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hoourlyRate;
  const RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hoourlyRate,
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(12),
                color: Colors.grey[300],
                child: Image.asset(logoImagePath),
              ),
            ),
            const SizedBox(width: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(jobTitle,style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
                Text(companyName),
              ],
            ),
              ],
            ),


            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green[300],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '\$' + hoourlyRate.toString() + '/hr'),
            )
          ],
        ),
    
      ),
    );
  }
}