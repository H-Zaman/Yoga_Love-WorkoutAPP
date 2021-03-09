import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:workout/util/resource/color.dart';

class PersonalPlanSheet extends StatelessWidget {
  final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    // Simple TableCalendar configuration (using Styles)
    Widget _buildTableCalendar() {
      return TableCalendar(
        initialCalendarFormat: CalendarFormat.week,
        calendarController: _calendarController,
        startingDayOfWeek: StartingDayOfWeek.monday,
        calendarStyle: CalendarStyle(
          selectedColor: Colors.deepOrange[400],
          todayColor: Colors.deepOrange[200],
          markersColor: Colors.brown[700],
          outsideDaysVisible: false,
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          formatButtonTextStyle:
          TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
          formatButtonDecoration: BoxDecoration(
            color: Colors.deepOrange[400],
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );
    }

    Widget _buildTodayWorkout(){
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,10,20,0),
          child: ListView(
            children: [
              TodayWorkoutCard(
                btnColor: AppColor.main,
                title: 'Beginner',
                subTitle: 'Ultrabum',
                time: 20,
                icon: Icons.timer,
                image: 'assets/images/abs.png',
              ),
              TodayWorkoutCard(
                btnColor: Colors.redAccent,
                title: 'Butt',
                subTitle: 'Tight tummy',
                time: 18,
                icon: CupertinoIcons.timelapse,
                image: 'assets/images/run.png',
              ),
              TodayWorkoutCard(
                btnColor: Colors.greenAccent,
                title: 'Weight loss',
                subTitle: 'Recovery program',
                time: 7,
                icon: CupertinoIcons.clock,
                image: 'assets/images/dumbbell.png',
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.white
      ),
      height: Get.height * .9,
      width: Get.width,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Personal Plan',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'B',
                    color: AppColor.dark
                  ),
                ),

                TextButton(
                  onPressed: () => Get.back(),
                  child: Row(
                    children: [
                      Text(
                        DateFormat('MMM dd').format(DateTime.now()),
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'B',
                          color: AppColor.dark
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        CupertinoIcons.arrow_down_circle,
                        color: AppColor.dark,
                        size: 20,
                      )
                    ],
                  )
                )
              ],
            ),
          ),

          _buildTableCalendar(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Today Workout',
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'B',
                  color: AppColor.dark
              ),
            ),
          ),
          _buildTodayWorkout()
        ],
      ),
    );
  }
}

class TodayWorkoutCard extends StatelessWidget {
  final Color btnColor;
  final String title;
  final String subTitle;
  final String image;
  final int time;
  final IconData icon;

  const TodayWorkoutCard({Key key, this.btnColor, this.title, this.subTitle, this.time, this.icon, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Container(
            height: 130,
            width: Get.width,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffA0C2E0).withOpacity(.15),
                  Color(0xffA0C2E0).withOpacity(.4),
                  Color(0xffA0C2E0),
                ]
              ),
              borderRadius: BorderRadius.circular(14)
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title.toUpperCase(),
                          style: TextStyle(
                            height: 1,
                            fontSize: 22,
                            color: AppColor.dark,
                            fontFamily: 'B'
                          ),
                        ),
                        Text(
                          subTitle.trim().capitalize,
                          style: TextStyle(
                            height: 1,
                            fontFamily: 'R',
                            color: AppColor.dark,
                            fontSize: 16
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              CupertinoIcons.clock,
                              size: 16,
                              color: AppColor.main,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '$time mins',
                              style: TextStyle(
                                height: 1,
                                color: AppColor.main,
                                fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 45,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          image
                        )
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 35,
            bottom: 35,
            right: 0,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: btnColor,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
