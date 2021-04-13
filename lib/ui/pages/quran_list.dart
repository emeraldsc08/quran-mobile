part of 'pages.dart';

class QuranList extends StatefulWidget {
  String firstName;
  String lastName;

  QuranList({@required this.firstName, @required this.lastName});

  @override
  _QuranListState createState() => _QuranListState();
}

class _QuranListState extends State<QuranList> {
  ScrollController controller;
  bool loadMore = false;
  bool firstLoad = true;

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) {
      Provider.of<QuranData>(context, listen: false).getData().then((_) {
        setState(() {
          firstLoad = false;
        });
      });
    });
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      setState(() {
        loadMore = true;
      });

      Provider.of<QuranData>(context, listen: false).getData().then((_) {
        setState(() {
          loadMore = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: Column(
          children: [
            AppBar(
              elevation: 0.5,
              backgroundColor: Colors.white,
              title: Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "assets/logo.png",
                            height: 15,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Quran Mobile",
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
           
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TilePhoto(
                  firstName: widget.firstName,
                  lastName: widget.lastName,
                  image: "assets/dashboard.png",
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: loadMore
          ? CircularProgressIndicator()
          : FloatingActionButton(
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Image.asset('assets/logo_menu.png'),
              ),
              backgroundColor: '12370F'.toColor(),
              onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        child: firstLoad
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Consumer<QuranData>(
                builder: (ctx, data, _) => ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: data.items.length,
                  itemBuilder: (ctx, i) => QuranSurah(
                    data.items[i].id,
                    data.items[i].name,
                    data.items[i].arab,
                    data.items[i].translate,
                    data.items[i].countAyat,
                  ),
                ),
              ),
      ),
    );
  }
}
