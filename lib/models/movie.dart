class Movie {
  final int id, year, numOfRatings;
  final double rating;
  final List<String> genra;
  final String plot, title, poster,subtitle,backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.subtitle,
    required this.id,
    required this.year,
    required this.numOfRatings,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.cast,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Morbius",
    subtitle: "Marvel Studios",
    year: 2022,
    poster: "assets/images/morbius poster.png",
    backdrop: "assets/images/morbius.jpg",
    numOfRatings: 342,
    rating: 5,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Secret Wars",
    subtitle: "Marvel Studios",
    year: 2022,
    poster: "assets/images/morbius poster.png",
    backdrop: "assets/images/secret wars.png",
    numOfRatings: 342,
    rating: 5,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Samaritan",
    subtitle: "Marvel Studios",
    year: 2022,
    poster: "assets/images/morbius poster.png",
    backdrop: "assets/images/samaritan.png",
    numOfRatings: 342,
    rating: 5,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
    ],
  ),
  Movie(
    id: 4,
    title: "Morbius",
    subtitle: "Marvel Studios",
    year: 2021,
    poster: "assets/images/morbius poster.png",
    backdrop: "assets/images/morbius.jpg",
    numOfRatings: 342,
    rating: 5,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
    ],
  ),
  Movie(
    id: 5,
    title: "Secret Wars",
    subtitle: "Marvel Studios",
    year: 2020,
    poster: "assets/images/morbius poster.png",
    backdrop: "assets/images/secret wars.png",
    numOfRatings: 342,
    rating: 5,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor1.png",
      },
      {
        "originalName": "Maria Espaes",
        "movieName": "As Morbius",
        "image": "assets/images/actor2.png",
      },
    ],
  ),
];

String plotText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex...";