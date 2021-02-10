class ProfileListItemModel{
  int date;
  int month;
  String message;
  List<String> images;
  ProfileListItemModel({
    this.date,
    this.month,
    this.message,
    this.images
});
  static final items = <ProfileListItemModel>[
    ProfileListItemModel(
      date: 12,
      month: 2,
      message: 'I was born to be great like many others before me',
      images: [
        'https://images.unsplash.com/photo-1562771380-a5eaf63b7ceb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        'https://images.unsplash.com/photo-1562771380-1b70b51fd6a2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        'https://images.unsplash.com/photo-1562771379-eafdca7a02f8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
      ]
    ),
    ProfileListItemModel(
      date: 13,
      month: 4,
      message: 'What a great day to die man, WONDERFUL',
      images: [
        'https://images.unsplash.com/photo-1584380931214-dbb5b72e7fd0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1584380844320-f8296a04eabe?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80',
        'https://images.unsplash.com/photo-1584380663336-4cf2c885008b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80'
      ]
    ),
    ProfileListItemModel(
      date: 07,
      month: 11,
      message: 'Why does this feel so good man, i have never been more happier',
      images: [
        'https://images.unsplash.com/photo-1611072653959-2792995ca81a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80',
        'https://images.unsplash.com/photo-1611072565885-b7c76f5b1bd1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80',
        'https://images.unsplash.com/photo-1611072566109-6ceb17134965?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'
      ]
    )
  ];
}