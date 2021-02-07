import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/model/courseItemModel.dart';
import 'package:workout/util/resource/color.dart';

class CourseItemWidget extends StatelessWidget {
  final CourseItemModel item;
  CourseItemWidget({@required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: Get.height * .1,
      child: Row(
        children: [
          Container(
            width: Get.width * .35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  item.image
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                item.name,
                style: TextStyle(
                  fontFamily: 'R',
                  fontSize: 16,
                  color: AppColor.dark
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width * .2,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 14,
                          color: Colors.red,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          item.part,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColor.dark
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .2,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.blueGrey[300],
                          size: 16,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '${item.time} mins',
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColor.dark
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              )
            ],
          ),
          Spacer(),
          Icon(
            CupertinoIcons.check_mark_circled,
            color: Colors.green,
            size: 20,
          )
        ],
      ),
    );
  }
}
