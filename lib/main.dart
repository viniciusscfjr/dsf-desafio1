// ignore_for_file: non_constant_list_element, invalid_constant, unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'models/category_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primaryColor: Colors.grey[900],
        // colorScheme: ColorScheme.fromSeed(
        // seedColor: ,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'dio.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<TechnologyModel> technologies = [];

  void _getTechnologies() {
    technologies = TechnologyModel.getTechnologies();
  }

  @override
  Widget build(BuildContext context) {
    _getTechnologies();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(21, 21, 21, 1),
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          _banner(),
          _carrers(technologies: technologies),
        ],
      ),
    );
  }
}

class _carrers extends StatelessWidget {
  const _carrers({
    required this.technologies,
  });

  final List<TechnologyModel> technologies;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Color.fromRGBO(30, 25, 44, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
            text: "Explore nossas",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                fontFamily: 'Open Sans',
                color: Colors.white),
            children: <TextSpan>[
              TextSpan(
                  text: ' carreiras',
                  style: TextStyle(color: Color.fromRGBO(147, 46, 209, 1))),
            ],
          )),
          Text(
            'Desbloqueie o seu próximo nível de conhecimento e seja contratado pelas maiores empresas de tecnologia do país',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              itemCount: technologies.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
              itemBuilder: (context, index) {
                return Container(
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(22, 18, 33, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(technologies[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            technologies[index].subtitle,
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _banner extends StatelessWidget {
  const _banner();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/banner-play.png"),
                fit: BoxFit.cover)),
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color.fromRGBO(30, 25, 44, 0),
              const Color.fromRGBO(0, 0, 0, 0.2),
              const Color.fromRGBO(0, 0, 0, 1.0),
            ], stops: [
              0,
              0.3,
              0.6
            ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.only(right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Codifique o seu \nfuturo global agora!",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          fontFamily: 'Open Sans',
                          color: Colors.white),
                    ),
                    Expanded(
                      child: Text(
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              fontFamily: 'Open Sans',
                              color: Colors.white),
                          "Domine as tecnologias utilizadas pelas empresas mais inovadoras do mundo e encare seu novo desafio profissional, evoluindo em comunidade com os melhores experts."),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(147, 46, 209, 1),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            textStyle: TextStyle(fontWeight: FontWeight.bold)),
                        child: Text("Começar Agora!")),
                  ],
                ),
              )
            ])));
  }
}
