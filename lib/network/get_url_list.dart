class GetUrlList {
  static List<String> picsum() {
    List<String> urlList = [];
    for (var i = 100; i < 105; i++) {
      urlList.add('https://picsum.photos/seed/$i/800/400');
    }

    return urlList;
  }

  static List<String> theta() {
    List<String> urlList = [];

    print('getting url from THETA');
    return urlList;
  }
}
