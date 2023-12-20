import 'package:flutter/material.dart';
import 'package:jobui/utils/job_card.dart';
import 'package:jobui/utils/recent_job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    //[companyName, jobTitle, logoImagePath, hourlyRate]
    ['Uber', 'UI Designer', 'lib/icons/uber.png', 20],
    ['Google', 'Product Dev', 'lib/icons/google.png', 30],
    ['Apple', 'Software Engineer', 'lib/icons/apple.png', 40],
    
  ];

  final List recentJobs = [
    //[companyName, jobTitle, logoImagePath, hourlyRate]
    ['Nike', 'Web Designer', 'lib/icons/nike.png', 20],
    ['Google', 'Product Dev', 'lib/icons/google.png', 30],
    ['Apple', 'Software Engineer', 'lib/icons/apple.png', 40],
    
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 50,),
            //app bar
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                child: Image.asset('lib/icons/menu.png',color: Colors.grey[800],),
                ),
            ),

            const SizedBox(height: 25,),

            //discover a new path
            const Padding(
              padding:  EdgeInsets.only(left:25.0),
              child: Text('Discover a new path',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

            const SizedBox(height: 25,),
      
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10.0),
                            child: Container(
                              height: 30,
                              child: Image.asset('lib/icons/search-interface-symbol.png')),
                          ),
                            const SizedBox(width: 15,),
                         const  Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search for a job...',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(width: 10,),
                  Container(
                    height: 50,
                    child: Image.asset('lib/icons/optimization.png',color: Colors.white,),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )
                ],
              ),
            ),
          const  SizedBox(height: 25,),
      
            //for you -> job cards
            const Padding(
              padding:  EdgeInsets.only(left:25.0),
              child:  Text('For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
              ),
            ),
            const SizedBox(height: 25,),

            Container(
              height: 160,
              child: ListView.builder(
                itemCount: jobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return  JobCard(
                    companyName: jobsForYou[index][0], 
                    jobTitle: jobsForYou[index][1], 
                    logoImagePath: jobsForYou[index][2], 
                    hoourlyRate: jobsForYou[index][3], 
                    );
                })
                ),
            ),

           const  SizedBox(height: 50,),
      
            //recently add -> job tiles
            const Padding(
              padding:  EdgeInsets.only(left:25.0),
              child: Text('Recently Added',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),

           const  SizedBox(height: 25,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context,index){
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                       jobTitle: recentJobs[index][1], 
                       logoImagePath: recentJobs[index][2],
                        hoourlyRate: recentJobs[index][3],
                        );
                  }
                  ),
              ),
              )
            
          ],
        ),
      ),
    );
  }
}