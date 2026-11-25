import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plp_selasa/NavBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const MyHomePage(title: 'Pra-UTS Pemograman Lintas Platform'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  int _counter = 0;
  int _click = -1;

  void _incrementCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                gradient: RadialGradient(
                  colors: [
                    Colors.white,
                    (1 == _click) ? Colors.black : Colors.blueGrey,
                  ],
                ),
              ),
              child: Image.asset('images/MyDashatar.png'),
            ),
            Text(
              'My Dashatar App',
              style: GoogleFonts.googleSansFlex(
                textStyle: Theme.of(context).textTheme.displaySmall,
                color: Colors.blueGrey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://www.instagram.com'));
                  },
                  icon: SvgPicture.asset(
                    'images/instagram.svg',
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey,
                      BlendMode.srcIn,
                    ),
                    width: 50,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://www.twitter.com'));
                  },
                  icon: SvgPicture.asset(
                    'images/twitter.svg',
                    width: 50,
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse('https://www.github.com'));
                  },
                  icon: SvgPicture.asset(
                    'images/github.svg',
                    width: 50,
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: NavBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () async {
                    player.play(AssetSource("Kick.wav"));
                    setState(() {
                      _counter += 1;
                      _click = 1;
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    setState(() {
                      _click = -1;
                    });
                  },
                  height: 150,
                  minWidth: 150,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          (1 == _click) ? Colors.black : Colors.red,
                        ],
                      ),
                    ),
                    child: Image.asset('images/MyDashatar.png'),
                  ),
                ),
                MaterialButton(
                  onPressed: () async {
                    player.play(AssetSource("Ride.wav"));
                    setState(() {
                      _counter += 1;
                      _click = 2;
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    setState(() {
                      _click = -1;
                    });
                  },
                  height: 150,
                  minWidth: 150,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          (2 == _click) ? Colors.black : Colors.green,
                        ],
                      ),
                    ),
                    child: Image.asset('images/MyDashatar.png'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () async {
                    player.play(AssetSource("Snare.wav"));
                    setState(() {
                      _counter += 1;
                      _click = 3;
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    setState(() {
                      _click = -1;
                    });
                  },
                  height: 150,
                  minWidth: 150,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          (3 == _click) ? Colors.black : Colors.blue,
                        ],
                      ),
                    ),
                    child: Image.asset('images/MyDashatar.png'),
                  ),
                ),
                MaterialButton(
                  onPressed: () async {
                    player.play(AssetSource("Tom.wav"));
                    setState(() {
                      _counter += 1;
                      _click = 4;
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    setState(() {
                      _click = -1;
                    });
                  },
                  height: 150,
                  minWidth: 150,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          (4 == _click) ? Colors.black : Colors.yellow,
                        ],
                      ),
                    ),
                    child: Image.asset('images/MyDashatar.png'),
                  ),
                ),
              ],
            ),
            Text(
              'You have pushed the button this many times:',
              style: GoogleFonts.archivoBlack(),
            ),
            Text(
              '$_counter (bitcountInk)',
              style: GoogleFonts.bitcountInk(
                textStyle: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Reset Counter',
        child: const Icon(Icons.autorenew),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
