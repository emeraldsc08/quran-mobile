part of 'widgets.dart';

class QuranSurah extends StatelessWidget {
  final int id;
  final String name;
  final String arab;
  final String translate;
  final int countAyat;

  QuranSurah(this.id, this.name, this.arab, this.translate, this.countAyat);

  void _viewDetail(BuildContext context) {
    Navigator.of(context).pushNamed('/detail', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        onTap: () => _viewDetail(context),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1, color: Colors.black),
            ),
          ),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: '12370F'.toColor(),
            child: Text(
              '$id',
              style: blackFontStyle1.copyWith(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$name ',
              style: blackFontStyle1.copyWith(
                  color: '12370F'.toColor(),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$arab',
              style: blackFontStyle1.copyWith(
                  color: '12370F'.toColor(),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$translate',
              style: blackFontStyle1.copyWith(
                  color: '12370F'.toColor(),
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              '$countAyat ayat',
              style: blackFontStyle1.copyWith(
                  color: '12370F'.toColor(),
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
