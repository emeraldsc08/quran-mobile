part of 'pages.dart';

class MenuSurah extends StatefulWidget {
  String firstName;
  String lastName;
  String gender;

  MenuSurah(
      {@required this.firstName,
      @required this.lastName,
      @required this.gender});

  @override
  _MenuSurahState createState() => _MenuSurahState();
}

class _MenuSurahState extends State<MenuSurah> {
  @override
  Widget build(BuildContext context) {
    return QuranList(
      firstName: widget.firstName,
      lastName: widget.lastName,
    );
  }
}
