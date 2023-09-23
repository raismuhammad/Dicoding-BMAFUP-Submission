import 'package:flutter/material.dart';
import 'package:the_movie/model/model.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
          if (constrains.maxWidth > 800) {
            return DetailWebPage(movie: movie);
          } else {
            return DetailMobilePage(movie: movie);
          }
        });
  }
}

class DetailMobilePage extends StatelessWidget {
  final Movie movie;

  const DetailMobilePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(movie.backdrop),
                    Padding(
                      padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Container(
                          height: 90,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 150, right: 10, top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(movie.rating, textAlign: TextAlign.left),
                              ],
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Image.network(
                            movie.poster,
                            height: 200,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            const FavoriteButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.all(22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Duration",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(movie.duration),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Text(
                                "Release Date",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(movie.releaseDate),
                            ],
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Column(
                            children: [
                              Text(
                                "Popularity",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(movie.popularity),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Overview',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            movie.overview,
                            style: TextStyle(),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: movie.casts.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Movie movie;

  const DetailWebPage({super.key, required this.movie});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 64,
            ),
            child: Center(
              child: SizedBox(
                width: 1200,
                child: Column(
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontFamily: 'Staaliches',
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image.asset(widget.movie.poster, height: 500,),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              const SizedBox(height: 16),
                              Scrollbar(
                                controller: _scrollController,
                                child: Container(
                                  height: 150,
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: widget.movie.casts.map((url) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Image.network(url),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                            child: Card(
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        widget.movie.title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 30.0,
                                          fontFamily: 'Staaliches',
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Text("Duration : "),
                                            const SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              widget.movie.duration,
                                            )
                                          ],
                                        ),
                                        const FavoriteButton()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text("Release Date : "),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          widget.movie.releaseDate,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text("Popularity : "),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          widget.movie.popularity,
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16.0),
                                      child: Text(
                                        widget.movie.overview,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}



class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
