// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/navb.dart';
import 'package:http/http.dart' as http;

class DNewsPage extends StatefulWidget {
  const DNewsPage({super.key});

  @override
  State<DNewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<DNewsPage> {
  List<News> newslist = [];
  Future getApi() async {
    var response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=th&category=business&apiKey=6ff8189dff8a4008b821ef746ba6ef74'));
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      List<dynamic> articles = responseData['articles'];
      return newslist = articles.map((e) => News.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  @override
  void initState() {
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: const Color.fromRGBO(50, 205, 50, 100),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Log In Page'),
      ),
      drawer: navb(),
      body: FutureBuilder(
        future: getApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: newslist.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.newspaper),
                        title: Text(newslist[index].title),
                        subtitle: Text(
                          ' Writter ' + newslist[index].author,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500),
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class News {
  final String author;
  final String title;
  final String url;
  News({
    required this.author,
    required this.title,
    required this.url,
  });
  factory News.fromJson(Map<String, dynamic> json) {
    return News(author: json['author'], title: json['title'], url: json['url']);
  }
}
