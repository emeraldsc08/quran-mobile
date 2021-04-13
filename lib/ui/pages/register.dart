part of 'pages.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hidePass = true;
  String selectedGender;
  List<String> gender;
  bool isLoading = false;

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  void initState() {
    super.initState();

    gender = [
      'Laki-laki',
      'Perempuan',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Form(
                  key: _form,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          'Register',
                          style: blackFontStyle1.copyWith(
                              color: '12370F'.toColor(),
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 26, defaultMargin, 6),
                        child: Text(
                          "Nama Depan",
                          style: blackFontStyle2,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        child: TextFormField(
                          controller: firstnameController,
                          validator: (val) {
                            if (val.isEmpty) return 'masukkan nama depan';
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: greyFontStyle,
                              hintText: 'masukkan nama depan'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 16, defaultMargin, 6),
                        child: Text(
                          "Nama Belakang",
                          style: blackFontStyle2,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        child: TextFormField(
                          controller: lastnameController,
                          validator: (val) {
                            if (val.isEmpty) return 'masukkan nama belakang';
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: greyFontStyle,
                              hintText: 'masukkan nama belakang'),
                        ),
                      ),
                      new Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 16, defaultMargin, 6),
                        child: Text(
                          "Jenis Kelamin",
                          style: blackFontStyle2,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)),
                        child: DropdownButton(
                            hint: Text('pilih jenis kelamin'),
                            value: selectedGender,
                            isExpanded: true,
                            underline: SizedBox(),
                            items: gender
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: blackFontStyle3,
                                    )))
                                .toList(),
                            onChanged: (item) {
                              setState(() {
                                selectedGender = item;
                              });
                            }),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 24),
                        height: 45,
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin),
                        child: RaisedButton(
                          onPressed: () async {
                            if (_form.currentState.validate() == true) {
                              setState(() {
                                isLoading = true;
                              });
                              var duration = const Duration(seconds: 2);
                              Timer(duration, () {
                                setState(() {
                                  isLoading = false;
                                });
                              });
                              print("SNONDSONDIOSNDO");
                              print(firstnameController.text);
                              print(lastnameController.text);
                              print(selectedGender);
                              // SharedPreferences prefs =
                              //     await SharedPreferences.getInstance();
                              // prefs.setString('firstName',
                              //     firstnameController.text.toString());
                              // prefs.setString('lastName',
                              //     lastnameController.text.toString());
                              // prefs.setString(
                              //     'gender', selectedGender.toString());

                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (BuildContext context) =>
                              //             MenuSurah(
                              //               firstName: firstnameController.text
                              //                   .toString(),
                              //               lastName: lastnameController.text
                              //                   .toString(),
                              //               gender: selectedGender.toString(),
                              //             )));

                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MenuSurah(
                                            firstName: firstnameController.text
                                                .toString(),
                                            lastName: lastnameController.text
                                                .toString(),
                                            gender: selectedGender.toString(),
                                          )),
                                  (Route<dynamic> route) => route is MenuSurah);
                              // Get.to(MenuSurah(
                              //   firstName: firstnameController.text.toString(),
                              //   lastName: lastnameController.text.toString(),
                              //   gender: selectedGender.toString(),
                              // ));
                            }
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
                                  'Masuk Sekarang',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                        ),
                      ),
                    ],
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
        ],
      ),
    );
  }
}
