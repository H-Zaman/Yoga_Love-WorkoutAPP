class CourseItemModel{
  String name;
  String image;
  String part;
  int time;
  CourseItemModel({
    this.name,
    this.part,
    this.time,
    this.image
});

  static final items = <CourseItemModel>[
    CourseItemModel(
      name: 'Jumping Leg Tucks',
      part: 'BELLY',
      time: 10,
      image: 'https://images.unsplash.com/photo-1571731956672-f2b94d7dd0cb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80'
    ),
    CourseItemModel(
      name: 'Squat reaches',
      part: 'BACK',
      time: 12,
      image: 'https://images.unsplash.com/photo-1571019613576-2b22c76fd955?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80'
    ),
    CourseItemModel(
      name: 'Strechy Strechy',
      part: 'LEGS',
      time: 10,
      image: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1394&q=80'
    ),
  ];

}