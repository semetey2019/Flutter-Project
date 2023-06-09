class ApiConst {
  static const apiKey = '5fec192b2c62456aac04b237549997aa';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';

  static const newsImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv_yRJbCYXUchlrCCQcSboWTKD5DsJbXhKfA&usqp=CAU';
}
