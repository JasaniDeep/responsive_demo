import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  const url = 'https://www.youtube.com/';
                  if (await canLaunch(url)) {
                    await launch(url, forceWebView: true, enableJavaScript: true);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                // onTap: () async{
                //   await launchUrl(Uri.parse('https://www.youtube.com/'));
                //   // launch();
                // },
                child: Image.asset(
                  "assets/Task.jpeg",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const SizedBox(height:10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("How HSBC BWF World Tour 2023-26 circuit of 31 Tournaments planned?",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                   const SizedBox(height: 15),
                    const Text("The tournaments are divided into 4 levels:"),
                    const Text("Super 1000 (Four tournaments)\n"
                        "Super 750 (Six tournaments)\n"
                        "Super 500 (Nine tournaments)\n"
                         "Super 300 (Eleven Tournaments)"),
                    const Text("A total circuit of 31 tournaments to be played and the top 8 players in each category will clinge a spot in the world tour season finals. The Categories are Singles (men's and women's) and doubles (men's, women's and mixed)."),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Read more at bwfbadminton\n31st January 2024"),
                        Image.asset(
                          "assets/footer.jpeg",
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> launch() async {
  //   if (!await launchUrl(Uri.parse('https://www.youtube.com/'))) {
  //     throw Exception('Could not launch https://www.youtube.com/');
  //   }else{
  //     launchUrl(Uri.parse('https://www.youtube.com/'));
  //   }
  // }
}
