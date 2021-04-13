part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SafeArea(
                child: Container(
              color: backColor ?? Colors.white,
            )),
            SafeArea(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        width: double.infinity,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: [
                            onBackButtonPressed != null
                                ? GestureDetector(
                                    onTap: () {
                                      if (onBackButtonPressed != null) {
                                        onBackButtonPressed();
                                      }
                                    },
                                    child: Container(
                                      width: 24,
                                      height: 24,
                                      margin: EdgeInsets.only(right: 26),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/back_arrow.png'))),
                                    ),
                                  )
                                : SizedBox(),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                "assets/logo.png",
                                height: 15,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  title,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: '12370F'.toColor()),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      child ?? SizedBox()
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
