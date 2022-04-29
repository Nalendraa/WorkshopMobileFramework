import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// @dart=2.9
import 'package:week11_moviedb/data/api_provider.dart';
import 'package:week11_moviedb/model/popular_movies.dart';

void main() => runApp(MoviesApp());

class MoviesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(),
    );
    throw UnimplementedError();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiProvider apiProvider = ApiProvider();
  late Future<PopularMovies> popularMovies;

  String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';

  @override
  void initState() {
    popularMovies = apiProvider.getPopularMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEXFLIT'),
      ),
      body: FutureBuilder(
        future: popularMovies,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            print("Find Data: ${snapshot.hasData}");
            return ListView.builder(
              itemCount: snapshot.data.results.length,
              itemBuilder: (BuildContext context, int index) {
                return moviesItem(
                    poster:
                    "$imageBaseUrl${snapshot.data.results[index].posterPath}",
                    title: '${snapshot.data.results[index].title}',
                    date: '${snapshot.data.results[index].releaseDate}',
                    voteAverage: '${snapshot.data.results[index].voteAverage}',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MoviesDetail(
                                movie: snapshot.data.results[index],
                              )));
                    });
              },
            );
          } else if (snapshot.hasError) {
            print("An Error: ${snapshot.hasError}");
            return Text('Erorr!!!');
          } else {
            print("Please, wait...");
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget moviesItem({required String poster,
    required String title,
    required String date,
    required String voteAverage,
    required Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(
          width: 120,
          child: CachedNetworkImage(
            imageUrl: poster,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today_sharp,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(date),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(voteAverage),
                        ],
                      ),
                    ],
                ),),
              ),
          ],
        ),
      ),
    );
  }
}

class MoviesDetail extends StatelessWidget {
  final Results movie;

  const MoviesDetail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Container(
        child: Text(movie.overview),
      ),
    );
  }
}
