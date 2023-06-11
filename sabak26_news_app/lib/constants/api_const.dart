class ApiConst {
  static const apiKey = '5fec192b2c62456aac04b237549997aa';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';

  static const newsImage =
      'https://cdn.xxl.thumbs.canstockphoto.com/news-world-news-conceptual-3d-rendered-image-drawing_csp0541854.jpg';
}
