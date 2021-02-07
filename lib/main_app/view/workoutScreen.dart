import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/model/courseItemModel.dart';
import 'package:workout/main_app/model/gridViewItemModel.dart';
import 'package:workout/main_app/view/widgets/courseItemWidget.dart';
import 'package:workout/util/resource/color.dart';

class WorkoutScreen extends StatefulWidget {
  final GridViewItemModel item;

  const WorkoutScreen({Key key, this.item}) : super(key: key);

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: AppColor.white
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  CupertinoIcons.arrow_left,
                  color: AppColor.dark,
                  size: 16,
                )
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        widget.item.fav = !widget.item.fav;
                      });
                    },
                    icon: Icon(
                      widget.item.fav ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      size: 16,
                      color: AppColor.dark,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      size: 16,
                      color: AppColor.dark,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.item.image,
                child: Container(
                  height: Get.height * .45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        widget.item.image
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: Get.height * .3,
                child: Text(
                  widget.item.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'B',
                    color: AppColor.white
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: Get.height * .35,
                child: Text(
                  widget.item.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.ash
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Course preview',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'B',
                        color: AppColor.dark
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'More',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: 3,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => CourseItemWidget(item: CourseItemModel.items[index]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  children: [
                    Icon(
                      CupertinoIcons.folder_open,
                      color: AppColor.dark,
                    ),
                    Text(
                      'Add',
                      style: TextStyle(
                        color: AppColor.dark,
                        fontSize: 12
                      ),
                    )
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: Get.width * .7,
                  height: Get.height * .075,
                  child: RaisedButton(
                    onPressed: (){},
                    color: AppColor.main,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Start Program',
                      style: TextStyle(
                        color: AppColor.white,
                        fontFamily: 'R',
                        fontSize: 16
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}