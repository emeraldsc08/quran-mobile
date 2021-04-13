part of 'pages.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Quran Mobile",
                style: greenFontStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bacalah dan Tuhanmulah yang Maha",
                style: lightgreenFontStyle,
              ),
              Text(
                "Pemurah",
                style: lightgreenFontStyle,
              ),
              Container(
                child: Image.asset(
                  "assets/start.png",
                  width: 400,
                  height: 400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: RaisedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      var duration = const Duration(seconds: 2);
                      Timer(duration, () {
                        setState(() {
                          isLoading = false;
                        });
                      });
                       Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>Register()
                                          ));
                      // Get.to(Register());
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: 'E7A400'.toColor(),
                    child: isLoading
                        ? SpinKitFadingCircle(
                            size: 35,
                            color: Colors.white,
                          )
                        : Text(
                            'Mulai',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                  ),
                ),
              ),
              Image.asset(
                "assets/poweredny_ijo.png",
                width: 80,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
