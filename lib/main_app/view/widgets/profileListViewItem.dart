import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/model/profileListItemModel.dart';
import 'package:workout/util/resource/color.dart';

class ProfileListViewItem extends StatelessWidget {
  final ProfileListItemModel item;

  const ProfileListViewItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .27,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: AppColor.main,
                  height: 7,
                  width: 12,
                  margin: EdgeInsets.only(bottom: 8,right: 7),
                ),
                RichText(
                  text: TextSpan(
                    text: item.date.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "B",
                      color: AppColor.dark
                    ),
                    children: [
                      TextSpan(
                        text: '/',
                        style: TextStyle(
                          color: AppColor.lightGrey,
                          fontSize: 10,
                          fontFamily: 'R'
                        )
                      ),
                      TextSpan(
                        text: item.month.toString(),
                        style: TextStyle(
                          color: AppColor.lightGrey,
                          fontFamily: 'L',
                          fontSize: 12
                        )
                      ),
                    ]
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    '"${item.message}"',
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'R',
                      color: AppColor.lightGrey
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    padding: EdgeInsets.only(right: 20),
                    itemCount: item.images.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            item.images[index]
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index == 0 ? 2 : 1),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}