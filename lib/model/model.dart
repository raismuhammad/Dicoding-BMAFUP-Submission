class Movie {
  String title;
  String poster;
  String backdrop;
  String rating;
  String duration;
  String releaseDate;
  String popularity;
  String overview;
  List<String> casts;

  Movie({
    required this.title,
    required this.poster,
    required this.backdrop,
    required this.rating,
    required this.duration,
    required this.releaseDate,
    required this.popularity,
    required this.overview,
    required this.casts,
  });
}

var movieList = [
  Movie(
    title: "Thor",
    poster:
        "https://images-cdn.ubuy.co.id/634ef06b8baa0a022a1b1b31-thor-ragnarok-movie-poster-d-thor.jpg",
    backdrop:
        "https://c4.wallpaperflare.com/wallpaper/572/47/710/zipper-ragnarok-lightning-warrior-gladiator-hd-wallpaper-preview.jpg",
    rating: "9.0",
    duration: "120min",
    releaseDate: "21 September 2023",
    popularity: "33.3333",
    overview:
        "Thor is a 2011 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Paramount Pictures,[a] it is the fourth film in the Marvel Cinematic Universe (MCU). It was directed by Kenneth Branagh, written by the writing team of Ashley Edward Miller and Zack Stentz along with Don Payne, and stars Chris Hemsworth as the title character alongside Natalie Portman, Tom Hiddleston, Stellan Skarsgård, Kat Dennings, Clark Gregg, Colm Feore, Ray Stevenson, Idris Elba, Jaimie Alexander, Rene Russo, and Anthony Hopkins. After reigniting a dormant war, Thor is banished from Asgard to Earth, stripped of his powers and his hammer Mjölnir. As his brother Loki (Hiddleston) plots to take the Asgardian throne, Thor must prove himself worthy.",
    casts: [
      "https://cdn.britannica.com/92/215392-050-96A4BC1D/Australian-actor-Chris-Hemsworth-2019.jpg",
      "https://hips.hearstapps.com/hmg-prod/images/hbz090121btynatalie-015-1631540671.jpg",
      "https://cdn.britannica.com/23/222823-050-65632515/New-Zealand-film-director-Taika-Waititi-2020.jpg",
      "https://static.wikia.nocookie.net/disney/images/b/bd/Kat_Dennings.jpg/revision/latest?cb=20180601154925",
      "https://flxt.tmsimg.com/assets/5729_v9_bc.jpg",
    ],
  ),
  Movie(
    title: "Captain America",
    poster:
        "https://images-cdn.ubuy.co.in/634cff8dee61a027615ddfa2-posters-usa-marvel-captain-america-the.jpg",
    backdrop: "https://wallpapercave.com/wp/wp3775630.jpg",
    rating: "9.0",
    duration: "120min",
    releaseDate: "21 September 2023",
    popularity: "33.3333",
    overview:
        "Captain America: The First Avenger is a 2011 American superhero film based on the Marvel Comics character Captain America. Produced by Marvel Studios and distributed by Paramount Pictures,[a] it is the fifth film in the Marvel Cinematic Universe (MCU). The film was directed by Joe Johnston, written by Christopher Markus and Stephen McFeely, and stars Chris Evans as Steve Rogers / Captain America alongside Tommy Lee Jones, Hugo Weaving, Hayley Atwell, Sebastian Stan, Dominic Cooper, Toby Jones, Neal McDonough, Derek Luke, and Stanley Tucci. During World War II, Steve Rogers, a frail man, is transformed into the super-soldier Captain America and must stop the Red Skull (Weaving) from using the Tesseract as an energy source for world domination.",
    casts: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Chris_Evans_SDCC_2014.jpg/800px-Chris_Evans_SDCC_2014.jpg",
      "https://flxt.tmsimg.com/assets/308495_v9_bc.jpg",
      "https://static.wikia.nocookie.net/marvelcinematicuniverse/images/9/91/Hayley_Atwell.jpg/revision/latest?cb=20220627125750",
      "https://m.media-amazon.com/images/M/MV5BNTk2OGU4NzktODhhOC00Nzc2LWIyNzYtOWViMjljZGFiNTMxXkEyXkFqcGdeQXVyMTE1NTQwOTk@._V1_.jpg",
    ],
  ),
  Movie(
    title: "Avatar",
    poster:
        "https://i.etsystatic.com/27725708/r/il/008c5a/2904647259/il_fullxfull.2904647259_ilg7.jpg",
    backdrop: "https://wallpapercave.com/wp/wp9424755.jpg",
    rating: "9.0",
    duration: "120min",
    releaseDate: "21 September 2023",
    popularity: "33.3333",
    overview:
        "Avatar (marketed as James Cameron's Avatar) is a 2009 epic science fiction film directed, written, co-produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez,[6] and Sigourney Weaver. It is the first installment in the Avatar film series. It is set in the mid-22nd century, when humans are colonizing Pandora, a lush habitable moon of a gas giant in the Alpha Centauri star system, in order to mine the valuable mineral unobtanium.[a] The expansion of the mining colony threatens the continued existence of a local tribe of Na'vi, a humanoid species indigenous to Pandora. The title of the film refers to a genetically engineered Na'vi body operated from the brain of a remotely located human that is used to interact with the natives of Pandora.[10]",
    casts: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Sam_Worthington_2013.jpg/800px-Sam_Worthington_2013.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Avatar_The_Way_of_Water_Tokyo_Press_Conference_Zoe_Salda%C3%B1a_%2852563431865%29_%28cropped2%29.jpg/800px-Avatar_The_Way_of_Water_Tokyo_Press_Conference_Zoe_Salda%C3%B1a_%2852563431865%29_%28cropped2%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/8/8d/Sigourney_Weaver_by_Gage_Skidmore_4.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Stephen_Lang_by_Gage_Skidmore.jpg/800px-Stephen_Lang_by_Gage_Skidmore.jpg",
    ],
  ),
  Movie(
    title: "Iron Man",
    poster: "https://upload.wikimedia.org/wikipedia/id/7/70/Ironmanposter.JPG",
    backdrop: "https://wallpapercave.com/wp/wp3405080.jpg",
    rating: "9.0",
    duration: "120min",
    releaseDate: "21 September 2023",
    popularity: "33.3333",
    overview:
        "A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.",
    casts: [
      "https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNjcwNzg4MjktNDNlMC00M2U1LWJmMjgtZTVkMmI4MDI2MTVmXkEyXkFqcGdeQXVyMjI4MDI0NTM@._V1_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNzIxOTQ1NTU1OV5BMl5BanBnXkFtZTcwMTQ4MDY0Nw@@._V1_.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Jeff_Bridges_by_Gage_Skidmore_3.jpg/640px-Jeff_Bridges_by_Gage_Skidmore_3.jpg",
    ],
  ),
  Movie(
    title: "Spider Man",
    poster:
        "https://imgx.sonora.id/crop/0x0:0x0/x/photo/2021/11/08/fdo0mohvqaap5tdjpeg-20211108014100.jpeg",
    backdrop:
        "https://sportshub.cbsistatic.com/i/2023/08/01/04fff273-5d36-4c0f-b406-c0c5ca197414/one-piece-live-action-netflix-poster.jpg",
    rating: "9.0",
    duration: "120min",
    releaseDate: "21 September 2023",
    popularity: "33.3333",
    overview:
        "Spider-Man: Homecoming is a 2017 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing. It is the second Spider-Man film reboot and the 16th film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Watts from a screenplay by the writing teams of Jonathan Goldstein and John Francis Daley, Watts and Christopher Ford, and Chris McKenna and Erik Sommers. Tom Holland stars as Peter Parker / Spider-Man, alongside Michael Keaton, Jon Favreau, Gwyneth Paltrow, Zendaya, Donald Glover, Jacob Batalon, Laura Harrier, Tony Revolori, Bokeem Woodbine, Tyne Daly, Marisa Tomei, and Robert Downey Jr. In the film, Peter Parker tries to balance high school life with being Spider-Man while facing the Vulture (Keaton).",
    casts: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Tom_Holland_by_Gage_Skidmore.jpg/1200px-Tom_Holland_by_Gage_Skidmore.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Zendaya_-_2019_by_Glenn_Francis.jpg/800px-Zendaya_-_2019_by_Glenn_Francis.jpg",
      "https://m.media-amazon.com/images/M/MV5BZmNiZmMzN2MtOTNkMy00YjA1LTg4NzktMWI4Njg1NzI3ODAyXkEyXkFqcGdeQXVyNzg5MzIyOA@@._V1_FMjpg_UX1000_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_.jpg",
    ],
  ),
];
