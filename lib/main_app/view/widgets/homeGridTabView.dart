import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:workout/main_app/model/gridViewItemModel.dart';

import 'gridViewItem.dart';

class HomeTabGridView extends StatelessWidget {
  final bool swap ;
  HomeTabGridView({@required this.swap});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: GridViewItemModel.items.length,
        itemBuilder: (BuildContext context, int index) => GridViewItem(item: GridViewItemModel.items[index]),
        staggeredTileBuilder: (int index) => swap ? staggeredTileBuilder1[index]:staggeredTileBuilder2[index],
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
      )
    );
  }
}

final staggeredTileBuilder1 = [
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 2.35),
];

final staggeredTileBuilder2 = [
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 3.3),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 2.35),
  StaggeredTile.count(2, 3.3),
];