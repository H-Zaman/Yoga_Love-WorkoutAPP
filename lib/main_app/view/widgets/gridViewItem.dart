import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/model/gridViewItemModel.dart';
import 'package:workout/main_app/view/workoutScreen.dart';
import 'package:workout/util/resource/color.dart';

class GridViewItem extends StatelessWidget {
  final GridViewItemModel item;
  GridViewItem({@required this.item});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(WorkoutScreen(item: item)),
      child: Column(
        children: [
          Expanded(
            child: Hero(
              tag: item.image,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      item.image,
                    ),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width * .4,
                  child: Text(
                    item.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'B',
                      fontSize: 16,
                      color: AppColor.dark
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.time} Minutes',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.lightGrey
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.dark)
                      ),
                      child: Icon(
                        Icons.add,
                        color: AppColor.dark,
                        size: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
