class NewsTileModel {
  List<String> Imgurl;
  String thumbsUp;
  String thmbsDown;
  String title;
  String MainText;
  NewsTileModel(
      this.Imgurl, this.thumbsUp, this.thmbsDown, this.title, this.MainText);

  static List<NewsTileModel> generateNews = [
    NewsTileModel(
        ['assets/img1.jpg', 'assets/img1.jpg'],
        '210',
        '4',
        'The easiest way to recover deleted files',
        'If you\'re hit by such a mishap, don\'t panic. If you keep calm and act fast, you might be able to get your files back. In fact, you can explore a few different methods on your quest to restore your data. from tools built into your operating system to third-party apps you can download for free. here\'s how to resure those files'),
    NewsTileModel(
        ['assets/img1.jpg', 'assets/img1.jpg'],
        '455',
        '15',
        'The best gaming PCs of 2023',
        'Buying a gaming PC doesn\'t have to be complicated. While building a PC isn\'t as complex as it may sound, opting for prebuilt configurations from brands like HP or Alienware is a great one-stop way to get the most value out of your gaming PC.What ultimately makes a difference, however, is CPU and RAM storage capacity')
  ];
}
