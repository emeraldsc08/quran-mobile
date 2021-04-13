part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    // WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // var username = prefs.getString('username');
    // var password = prefs.getString('password');
    // var profilePic = prefs.getString('profilePic');
    // var isManagement = prefs.getString('isManagement');

    // print(username);

    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return GetStarted();
          // return username == null
          //     ? GettingStartedScreen()
          //     : MainPage(
          //         username: username,
          //         password: password,
          //         profilePic: profilePic,
          //         isManagement: isManagement,
          //       );
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Container(
          child: Center(
            child: Image.asset(
              "assets/splash.png",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ));
  }
}
