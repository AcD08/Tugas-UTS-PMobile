import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslateScreen extends StatefulWidget {
  @override
  _TranslateScreenState createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  GoogleTranslator translator = GoogleTranslator();

  String _translateLanguage = '';
  String selectedLanguage = 'English';

  // list all language
  List listLanguage = [
    "Afrikaans",
    "Albanian",
    "Amharic",
    "Arabic",
    "Armenian",
    "Azerbaijani",
    'Basque',
    'Belarusian',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Chichewa',
    'Chinese Simplified',
    'Chinese Traditional',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dutch',
    'English',
    'Esperanto',
    'Estonian',
    'Filipino',
    'Finnish',
    'French',
    'Frisian',
    'Galician',
    'Georgian',
    'German',
    'Greek',
    'Gujarati',
    'Haitian Creole',
    'Hausa',
    'Hawaiian',
    'Hebrew',
    'Hindi',
    'Hmong',
    'Hungarian',
    'Icelandic',
    'Igbo',
    'Indonesian',
    'Irish',
    'Italian',
    'Japanese',
    'Javanese',
    'Kannada',
    'Kazakh',
    'Khmer',
    'Korean',
    'Kurdish (Kurmanji)',
    'Kyrgyz',
    'Lao',
    'Latin',
    'Latvian',
    'Lithuanian',
    'Luxembourgish',
    'Macedonian',
    'Malagasy',
    'Malay',
    'Malayalam',
    'Maltese',
    'Maori',
    'Marathi',
    'Mongolian',
    'Myanmar (Burmese)',
    'Nepali',
    'Norwegian',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese',
    'Punjabi',
    'Romanian',
    'Russian',
    'Samoan',
    'Scots Gaelic',
    'Serbian',
    'Sesotho',
    'Shona',
    'Sindhi',
    'Sinhala',
    'Slovak',
    'Slovenian',
    'Somali',
    'Spanish',
    'Sundanese',
    'Swahili',
    'Swedish',
    'Tajik',
    'Tamil',
    'Telugu',
    'Thai',
    'Turkish',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Vietnamese',
    'Welsh',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zulu'
  ];

  // output and input
  String out = '';
  final lang = TextEditingController();

  void trans() {
    // define
    if (selectedLanguage == 'Afrikaans') {
      _translateLanguage = 'au';
    } else if (selectedLanguage == 'Albanian') {
      _translateLanguage = 'sq';
    } else if (selectedLanguage == 'Amharic') {
      _translateLanguage = 'am';
    } else if (selectedLanguage == 'Albanian') {
      _translateLanguage = 'sq';
    } else if (selectedLanguage == '"Arabic"') {
      _translateLanguage = 'ar';
    } else if (selectedLanguage == 'Azerbaijani') {
      _translateLanguage = 'az';
    } else if (selectedLanguage == 'Basque') {
      _translateLanguage = 'eu';
    } else if (selectedLanguage == 'Belarusian') {
      _translateLanguage = 'be';
    } else if (selectedLanguage == 'Bengali') {
      _translateLanguage = 'bn';
    } else if (selectedLanguage == 'Bosnian') {
      _translateLanguage = 'bs';
    } else if (selectedLanguage == 'Bulgarian') {
      _translateLanguage = 'bg';
    } else if (selectedLanguage == 'Catalan') {
      _translateLanguage = 'ca';
    } else if (selectedLanguage == 'Cebuano') {
      _translateLanguage = 'ceb';
    } else if (selectedLanguage == 'Chichewa') {
      _translateLanguage = 'ny';
    } else if (selectedLanguage == 'Chinese Simplified') {
      _translateLanguage = 'zh-cn';
    } else if (selectedLanguage == 'Chinese Traditional') {
      _translateLanguage = 'zh-tw';
    } else if (selectedLanguage == 'Corsican') {
      _translateLanguage = 'co';
    } else if (selectedLanguage == 'Croatian') {
      _translateLanguage = 'hr';
    } else if (selectedLanguage == 'Czech') {
      _translateLanguage = 'cs';
    } else if (selectedLanguage == 'Danish') {
      _translateLanguage = 'da';
    } else if (selectedLanguage == 'Dutch') {
      _translateLanguage = 'nl';
    } else if (selectedLanguage == 'English') {
      _translateLanguage = 'en';
    } else if (selectedLanguage == 'Esperanto') {
      _translateLanguage = 'et';
    } else if (selectedLanguage == 'Filipino') {
      _translateLanguage = 'tl';
    } else if (selectedLanguage == 'Finnish') {
      _translateLanguage = 'fi';
    } else if (selectedLanguage == 'French') {
      _translateLanguage = 'fr';
    } else if (selectedLanguage == 'Frisian') {
      _translateLanguage = 'fy';
    } else if (selectedLanguage == 'Galician') {
      _translateLanguage = 'gl';
    } else if (selectedLanguage == 'Georgian') {
      _translateLanguage = 'ka';
    } else if (selectedLanguage == 'German') {
      _translateLanguage = 'de';
    } else if (selectedLanguage == 'Greek') {
      _translateLanguage = 'el';
    } else if (selectedLanguage == 'Gujarati') {
      _translateLanguage = 'gu';
    } else if (selectedLanguage == 'Haitian Creole') {
      _translateLanguage = 'ht';
    } else if (selectedLanguage == 'Hausa') {
      _translateLanguage = 'ha';
    } else if (selectedLanguage == 'Hawaiian') {
      _translateLanguage = 'haw';
    } else if (selectedLanguage == 'Hebrew') {
      _translateLanguage = 'iw';
    } else if (selectedLanguage == 'Hindi') {
      _translateLanguage = 'hi';
    } else if (selectedLanguage == 'Hmong') {
      _translateLanguage = 'hmn';
    } else if (selectedLanguage == 'Hungarian') {
      _translateLanguage = 'hu';
    } else if (selectedLanguage == 'Icelandic') {
      _translateLanguage = 'is';
    } else if (selectedLanguage == 'Igbo') {
      _translateLanguage = 'ig';
    } else if (selectedLanguage == 'Indonesian') {
      _translateLanguage = 'id';
    } else if (selectedLanguage == 'Irish') {
      _translateLanguage = 'ga';
    } else if (selectedLanguage == 'Italian') {
      _translateLanguage = 'it';
    } else if (selectedLanguage == 'Japanese') {
      _translateLanguage = 'ja';
    } else if (selectedLanguage == 'Javanese') {
      _translateLanguage = 'jw';
    } else if (selectedLanguage == 'Kannada') {
      _translateLanguage = 'kn';
    } else if (selectedLanguage == 'Kazakh') {
      _translateLanguage = 'kk';
    } else if (selectedLanguage == 'Khmer') {
      _translateLanguage = 'km';
    } else if (selectedLanguage == 'Korean') {
      _translateLanguage = 'ko';
    } else if (selectedLanguage == 'Kurdish (Kurmanji)') {
      _translateLanguage = 'ku';
    } else if (selectedLanguage == 'Kyrgyz') {
      _translateLanguage = 'ky';
    } else if (selectedLanguage == 'Lao') {
      _translateLanguage = 'lo';
    } else if (selectedLanguage == 'Latin') {
      _translateLanguage = 'la';
    } else if (selectedLanguage == 'Latvian') {
      _translateLanguage = 'lv';
    } else if (selectedLanguage == 'Lithuanian') {
      _translateLanguage = 'lt';
    } else if (selectedLanguage == 'Luxembourgish') {
      _translateLanguage = 'lb';
    } else if (selectedLanguage == 'Macedonian') {
      _translateLanguage = 'mk';
    } else if (selectedLanguage == 'Malagasy') {
      _translateLanguage = 'mg';
    } else if (selectedLanguage == 'Malay') {
      _translateLanguage = 'ms';
    } else if (selectedLanguage == 'Malayalam') {
      _translateLanguage = 'ml';
    } else if (selectedLanguage == 'Maltese') {
      _translateLanguage = 'mt';
    } else if (selectedLanguage == 'Maori') {
      _translateLanguage = 'mi';
    } else if (selectedLanguage == 'Marathi') {
      _translateLanguage = 'mr';
    } else if (selectedLanguage == 'Mongolian') {
      _translateLanguage = 'mn';
    } else if (selectedLanguage == 'Myanmar (Burmese)') {
      _translateLanguage = 'my';
    } else if (selectedLanguage == 'Nepali') {
      _translateLanguage = 'ne';
    } else if (selectedLanguage == 'Norwegian') {
      _translateLanguage = 'no';
    } else if (selectedLanguage == 'Pashto') {
      _translateLanguage = 'ps';
    } else if (selectedLanguage == 'Persian') {
      _translateLanguage = 'fa';
    } else if (selectedLanguage == 'Polish') {
      _translateLanguage = 'pl';
    } else if (selectedLanguage == 'Portuguese') {
      _translateLanguage = 'pt';
    } else if (selectedLanguage == 'Punjabi') {
      _translateLanguage = 'pa';
    } else if (selectedLanguage == 'Romanian') {
      _translateLanguage = 'ro';
    } else if (selectedLanguage == 'Russian') {
      _translateLanguage = 'ru';
    } else if (selectedLanguage == 'Scots Gaelic') {
      _translateLanguage = 'gd';
    } else if (selectedLanguage == 'Serbian') {
      _translateLanguage = 'sr';
    } else if (selectedLanguage == 'Sesotho') {
      _translateLanguage = 'st';
    } else if (selectedLanguage == 'Shona') {
      _translateLanguage = 'sn';
    } else if (selectedLanguage == 'Sindhi') {
      _translateLanguage = 'sd';
    } else if (selectedLanguage == 'Sinhala') {
      _translateLanguage = 'si';
    } else if (selectedLanguage == 'Slovak') {
      _translateLanguage = 'sk';
    } else if (selectedLanguage == 'Slovenian') {
      _translateLanguage = 'sl';
    } else if (selectedLanguage == 'Somali') {
      _translateLanguage = 'so';
    } else if (selectedLanguage == 'Spanish') {
      _translateLanguage = 'es';
    } else if (selectedLanguage == 'Sundanese') {
      _translateLanguage = 'su';
    } else if (selectedLanguage == 'Swahili') {
      _translateLanguage = 'sw';
    } else if (selectedLanguage == 'Swedish') {
      _translateLanguage = 'sv';
    } else if (selectedLanguage == 'Tajik') {
      _translateLanguage = 'tg';
    } else if (selectedLanguage == 'Tamil') {
      _translateLanguage = 'ta';
    } else if (selectedLanguage == 'Telugu') {
      _translateLanguage = 'te';
    } else if (selectedLanguage == 'Thai') {
      _translateLanguage = 'th';
    } else if (selectedLanguage == 'Turkish') {
      _translateLanguage = 'tr';
    } else if (selectedLanguage == 'Ukrainian') {
      _translateLanguage = 'uk';
    } else if (selectedLanguage == 'Urdu') {
      _translateLanguage = 'ur';
    } else if (selectedLanguage == 'Uzbek') {
      _translateLanguage = 'uz';
    } else if (selectedLanguage == 'Vietnamese') {
      _translateLanguage = 'vi';
    } else if (selectedLanguage == 'Welsh') {
      _translateLanguage = 'cy';
    } else if (selectedLanguage == 'Xhosa') {
      _translateLanguage = 'xh';
    } else if (selectedLanguage == 'Yiddish') {
      _translateLanguage = 'yi';
    } else if (selectedLanguage == 'Yoruba') {
      _translateLanguage = 'yo';
    } else if (selectedLanguage == 'Zulu') {
      _translateLanguage = 'zu';
    }

    translator.translate(lang.text, to: _translateLanguage).then((value) {
      setState(() {
        out = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Kamus ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF121212),
                      fontFamily: 'PoppinsBold')),
              TextSpan(
                  text: 'Translate',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontFamily: 'PoppinsBold')),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red[400],
                    ),
                    child: FlatButton(
                      onPressed: () {
                        trans();
                      },
                      child: const Text("Translate",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'PoppinsBold')),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height / 3.5,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF121212),
                  ),
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: lang,
                      minLines: 5,
                      maxLines: 999,
                      decoration: const InputDecoration(
                        hintText: "Tap to enter text",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsReg',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: const TextStyle(
                          fontFamily: 'PoppinsReg',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(right: 198.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: listLanguage.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem(child: Text(value), value: value);
                    }).toList(),

                    // text
                    value: selectedLanguage,
                    style: const TextStyle(
                      fontFamily: 'PoppinsReg',
                      color: Colors.black,
                    ),
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value.toString();
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  // height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue[400],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 10.0, right: 10.0),
                    child: SelectableText(
                      out,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'PoppinsReg',
                      ),
                      showCursor: true,
                      cursorColor: Colors.white,
                      minLines: 5,
                      maxLines: 999,
                      scrollPhysics: ClampingScrollPhysics(),
                    ),
                  ),
                ),
              ),
              // Center(
              //   child: Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Container(
              //       width: 250,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10.0),
              //         color: Colors.red[400],
              //       ),
              //       child: FlatButton(
              //         onPressed: () {
              //           trans();
              //         },
              //         child: const Text("Translate",
              //             style: TextStyle(
              //                 color: Colors.white, fontFamily: 'PoppinsBold')),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
