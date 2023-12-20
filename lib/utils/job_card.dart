import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hoourlyRate;

  const JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hoourlyRate,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding:const EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    child: Image.asset(logoImagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding:const EdgeInsets.all(8),
                      color: Colors.grey[500],
                      child: const Text(
                        'Part Time',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text(
                  jobTitle,
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
              ),
              Text(
                '\$' + hoourlyRate.toString() + '/hr',
                ),
            ],
          ),
        ),
      ),
    );
  }
}