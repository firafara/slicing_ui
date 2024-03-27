import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/custom_checkbox.dart';


class LanguagePage extends StatefulWidget {

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List<String> allLanguages = [
    'Afar',
    'Abkhaz',
    'Avestan',
    'Afrikaans',
    'Akan',
    'Amharic',
    'Aragonese',
    'Arabic',
    'Assamese',
    'Avaric',
    'Aymara',
    'Azerbaijani',
    'Bashkir',
    'Belarusian',
    'Bulgarian',
    'Bihari',
    'Bislama',
    'Bambara',
    'Bengali',
    'Tibetan',
    'Breton',
    'Bosnian',
    'Catalan; Valencian',
    'Chechen',
    'Chamorro',
    'Corsican',
    'Cree',
    'Czech',
    'Church Slavic',
    'Chuvash',
    'Welsh',
    'Danish',
    'German',
    'Divehi; Dhivehi; Maldivian;',
    'Dzongkha',
    'Ewe',
    'Greek, Modern (1453-)',
    'English',
    'Esperanto',
    'Spanish; Castilian',
    'Estonian',
    'Basque',
    'Persian',
    'Fulah',
    'Finnish',
    'Fijian',
    'Faroese',
    'French',
    'Western Frisian',
    'Irish',
    'Gaelic; Scottish Gaelic',
    'Galician',
    'Guarani',
    'Gujarati',
    'Manx',
    'Hausa',
    'Hebrew',
    'Hindi',
    'Hiri Motu',
    'Croatian',
    'Haitian',
    'Hungarian',
    'Armenian',
    'Herero',
    'Interlingua',
    'Indonesian',
    'Interlingue',
    'Igbo',
    'Sichuan Yi; Nuosu',
    'Inupiaq',
    'Ido',
    'Icelandic',
    'Italian',
    'Inuktitut',
    'Japanese',
    'Javanese',
    'Georgian',
    'Kongo',
    'Kikuyu; Gikuyu',
    'Kuanyama; Kwanyama',
    'Kazakh',
    'Kalaallisut; Greenlandic',
    'Central Khmer',
    'Kannada',
    'Korean',
    'Kanuri',
    'Kashmiri',
    'Kurdish',
    'Komi',
    'Cornish',
    'Kirghiz; Kyrgyz',
    'Latin',
    'Luxembourgish',
    'Ganda',
    'Limburgan',
    'Lingala',
    'Lao',
    'Lithuanian',
    'Luba-Katanga',
    'Latvian',
    'Malagasy',
    'Marshallese',
    'Maori',
    'Macedonian',
    'Malayalam',
    'Mongolian',
    'Marathi',
    'Malay',
    'Maltese',
    'Burmese',
    'Nauru',
    'Bokmål',
    'Ndebele',
    'Nepali',
    'Ndonga',
    'Dutch; Flemish',
    'Norwegian',
    'Ndebele',
    'Navajo; Navaho',
    'Chichewa',
    'Occitan (post 1500)',
    'Ojibwa',
    'Oromo',
    'Oriya',
    'Ossetian; Ossetic',
    'Panjabi; Punjabi',
    'Pali',
    'Polish',
    'Pushto; Pashto',
    'Portuguese',
    'Quechua',
    'Romansh',
    'Rundi',
    'Russian',
    'Kinyarwanda',
    'Sanskrit',
    'Sardinian',
    'Sindhi',
    'Northern Sami',
    'Samoan',
    'Sango',
    'Serbian',
    'Gaelic; Irish',
    'Shona',
    'Sinhala; Sinhalese',
    'Slovak',
    'Slovenian',
    'Samoan',
    'Shona',
    'Somali',
    'Sotho, Southern',
    'Spanish; Castilian',
    'Sundanese',
    'Swahili',
    'Swati',
    'Swedish',
    'Tamil',
    'Telugu',
    'Tajik',
    'Thai',
    'Tigrinya',
    'Turkmen',
    'Tagalog',
    'Tswana',
    'Tonga (Tonga Islands)',
    'Turkish',
    'Tsonga',
    'Tatar',
    'Twi',
    'Tahitian',
    'Uighur; Uyghur',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Venda',
    'Vietnamese',
    'Volapük',
    'Walloon',
    'Wolof',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zhuang; Chuang',
    'Zulu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sub Categories',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'English (US)',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'English (UK)',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              Text(
                'All Languages',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    for(String label in allLanguages)
                      Column(
                        children: [
                          CustomCheckbox(
                            value: false,
                            onChanged: (newValue) {
                              // Do something with the new value
                              print('New value: $newValue');
                            },
                            text: '$label',
                          ),
                          SizedBox(height: 10,),
                        ],
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
