part of 'shared.dart';

Color mainColor = "12370F".toColor();
Color lightGreen = "495D47".toColor();
Color yellowColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();
Color greyMuda = "E2E2E2".toColor();
Color snackbarSalah = "D9435E".toColor();
Color snackbarBenar = "1AC149".toColor();
Icon iconSnackbarSalah = Icon(
  MdiIcons.closeCircleOutline,
  color: Colors.white,
);
Icon iconSnackbarBenar = Icon(
  MdiIcons.checkCircleOutline,
  color: Colors.white,
);

Widget loadingIndicator = SpinKitFadingCircle(
  size: 35,
  color: mainColor,
);

Widget loadingIndicatorPutih = SpinKitFadingCircle(
  size: 35,
  color: Colors.white,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins().copyWith(
  color: Colors.black,
);
TextStyle blackFontStyle4 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500);
TextStyle whiteFontStyle = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700);
TextStyle whiteFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500);

TextStyle greenFontStyle = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontSize: 26, fontWeight: FontWeight.w500);
TextStyle lightgreenFontStyle = GoogleFonts.poppins()
    .copyWith(color: lightGreen, fontSize: 14, fontWeight: FontWeight.w500);

const double defaultMargin = 24;
