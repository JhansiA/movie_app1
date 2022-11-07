class Category {
  final String category, backdrop;
  final int numOfTitles;

  Category({
    required this.category,
    required this.backdrop,
    required this.numOfTitles,
  });
}

List<Category> categories = [
  Category(category: 'Movies',
      backdrop: 'assets/images/Movie_bg.png',
      numOfTitles: 20),
  Category(category: 'Animes',
      backdrop: 'assets/images/Anime_bg.png',
      numOfTitles: 10)
];