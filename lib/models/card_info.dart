class CardInfo {
  String title, subtitle, image;
  Function? onCardClick;
  CardInfo(
      {required this.title,
      required this.subtitle,
      required this.image,
      this.onCardClick});
}

// ? null safety <<
//  CardInfo ( String title , String subtitle , String image )
//{
//     title = title ;
//   }
