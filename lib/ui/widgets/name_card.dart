part of 'widgets.dart';

class TilePhoto extends StatelessWidget {
  @required
  final String image;
  @required
  final String firstName;
  @required
  final String lastName;

  const TilePhoto({
    this.image,
    this.firstName,
    this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: new BoxConstraints.expand(
          height: 80.0,
        ),
        alignment: Alignment.center,
        padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          image: new DecorationImage(
            image: new AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: new Column(
              children: [
                Text(
                  "Assalamualaikum",
                  style: blackFontStyle1.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "${firstName ?? "first"} ${lastName ?? "last"}",
                  style: blackFontStyle1.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )));
  }
}
