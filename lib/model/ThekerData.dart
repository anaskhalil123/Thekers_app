import 'package:flutter_application/model/thekers_class_card.dart';
import 'package:hive/hive.dart';

part 'ThekerData.g.dart';

@HiveType(typeId: 1)
class ThekerData {
  @HiveField(0)
  final String text;

  @HiveField(1)
  final String reward;

  @HiveField(2)
  final String number;

  @HiveField(3)
  final String guide;

  @HiveField(4)
  final String thekerClass;

  ThekerData(
      {required this.text,
      required this.reward,
      required this.guide,
      required this.number,
      required this.thekerClass});
}

/*
Hive Database (non-structured database): 
Model (Table in the secema)
Box (Table in the Database)
entry (the Document in the Model)
Adapter (the generated class that format and deformat the data from the model)
*/

void addThekersAndClasses() {
  if (getThekerClasses().isEmpty && getAllThekers().isEmpty) {
    print('MAIN data begin add now!');
    addThekerClass('أذكار الصباح');
    addThekerClass('أذكار المساء');
    addThekerClass('أذكار بعد الصلاة');
    addThekerClass('أذكار النوم');
    addThekerClass('أذكار الاستيقاظ');
    if (getAllThekers().isEmpty) {
      print('MAIN theker data begin add now!');
// أذكار الصباح
      addThekerData(
        'سبحان الله وبحمده',
        'حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.',
        '100',
        'عَنْ أَبِي هُرَيْرَةَ ، قَالَ : قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( مَنْ قَالَ: حِينَ يُصْبِحُ وَحِينَ يُمْسِي : سُبْحَانَ اللهِ وَبِحَمْدِهِ ، مِائَةَ مَرَّةٍ ، لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ ، بِأَفْضَلَ مِمَّا جَاءَ بِهِ ، إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ ، أَوْ زَادَ عَلَيْهِ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر.',
        '',
        '1',
        '''
      عن ابن مسعود قَالَ : كَانَ نَبِيُّ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ ، إِذَا أَمْسَى قَالَ : ( أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ ، وَالْحَمْدُ لِلَّهِ لَا إِلَهَ إِلَّا اللهُ ، وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا ، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ ) .
وَإِذَا أَصْبَحَ قَالَ ذَلِكَ أَيْضًا : ( أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ ) .
      ''',
        'أذكار الصباح',
      );
      addThekerData(
        'اللَّهُمَّ أَنْتَ رَبِّي لاَ إِلَهَ إِلَّا أَنْت َ، خَلَقْتَنِي وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي ، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
        'مَنْ قَالَهَا مِنَ النَّهَارِ مُوقِنًا بِهَا ، فَمَاتَ مِنْ يَوْمِهِ قَبْلَ أَنْ يُمْسِيَ ، فَهُوَ مِنْ أَهْلِ الجَنَّةِ ، وَمَنْ قَالَهَا مِنَ اللَّيْلِ وَهُوَ مُوقِنٌ بِهَا ، فَمَاتَ قَبْلَ أَنْ يُصْبِحَ ، فَهُوَ مِنْ أَهْلِ الجَنَّةِ',
        '1',
        'عن شَدَّاد بْن أَوْسٍ رَضِيَ اللَّهُ عَنْهُ: عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( سَيِّدُ الِاسْتِغْفَارِ أَنْ تَقُولَ : اللَّهُمَّ أَنْتَ رَبِّي لاَ إِلَهَ إِلَّا أَنْت َ، خَلَقْتَنِي وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي ، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين). ',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور.',
        '',
        '1',
        'عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ كَانَ يَقُولُ إِذَا أَصْبَحَ : ( اللهُمَّ بِكَ أَصْبَحْنَا ، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوتُ ، وَإِلَيْكَ النُّشُورُ ) وَإِذَا أَمْسَى قَالَ : ( اللَّهُمَّ بِكَ أَمْسَيْنَا ، وَبِكَ أَصْبَحْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوتُ ، وَإِلَيْكَ الْمَصِيرُ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'اللَّهُمَّ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، لَا إِلَهَ إِلَّا أَنْتَ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ',
        '',
        '1',
        ' عَنْ أَبِي رَاشِدٍ الْحُبْرَانِيِّ قَالَ : أَتَيْتُ عَبْدَ اللَّهِ بْنَ عَمْرِو بْنِ الْعَاصِ ، فَقُلْتُ لَهُ : حَدِّثْنَا مَا سَمِعْتَ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ . فَأَلْقَى بَيْنَ يَدَيَّ صَحِيفَةً ، فَقَالَ : هَذَا مَا كَتَبَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ . فَنَظَرْتُ فِيهَا فَإِذَا فِيهَا : أَنَّ أَبَا بَكْرٍ الصِّدِّيقَ قَالَ يَا رَسُولَ اللَّهِ عَلِّمْنِي مَا أَقُولُ إِذَا أَصْبَحْتُ وَإِذَا أَمْسَيْتُ ؟ فَقَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ : ( يَا أَبَا بَكْرٍ ، قُلْ اللَّهُمَّ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، لَا إِلَهَ إِلَّا أَنْتَ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
        'لَمْ يَضُرَّهُ شَيْءٌ',
        '3',
        'عن عثمان بن عفان رضي الله عنه قال : سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ : ( مَنْ قَالَ : بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ ثَلَاثَ مَرَّاتٍ لَمْ تُصِبْهُ فَجْأَةُ بَلَاءٍ حَتَّى يُصْبِحَ ، وَمَنْ قَالَهَا حِينَ يُصْبِحُ ثَلَاثُ مَرَّاتٍ ، لَمْ تُصِبْهُ فَجْأَةُ بَلَاءٍ حَتَّى يُمْسِيَ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        'رَضِيتُ بِاللهِ رَبًّا ، وَبِالْإِسْلَامِ دِينًا ، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا',
        'كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ',
        '3',
        'عن خَادِم النَّبِيِّ، صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ ، قَالَ: قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( مَا مِنْ عَبْدٍ مُسْلِمٍ يَقُولُ حِينَ يُصْبِحُ وَحِينَ يُمْسِي ثَلَاثَ مَرَّاتٍ : رَضِيتُ بِاللهِ رَبًّا ، وَبِالْإِسْلَامِ دِينًا ، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا ، إِلَّا كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ )',
        'أذكار الصباح',
      );
      addThekerData(
        'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر. ',
        'أدى شكر يومه.',
        '1',
        '',
        'أذكار الصباح',
      );
      addThekerData(
        'اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
        'من قالها أعتقه الله من النار.',
        '4',
        'عن أنس بن مالك -رضي الله عنه- يقول: إن رسول الله -صلى الله عليه وسلم- قال: من قال حين يصبح: اللهم أصبحنا نشهدك ونشهد حملة عرشك وملائكتك وجميع خلقك أنك أنت الله، لا إله إلا أنت وحدك لا شريك لك، وأن محمدًا عبدك ورسولك، إلا غفر الله له ما أصاب في يومه ذلك، وإن قالها حين يمسي غفر الله له ما أصاب في تلك الليلة من ذنب.',
        'أذكار الصباح',
      );
      addThekerData(
        'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ، اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ. ',
        '',
        '3',
        ' عن عبدالرحمن ابن أبي بكرة: أنه قال لأبيه : أيا أبه، إني أسمعك تدعو كلَّ غداةٍ: (اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت) ثلاثًا حين تُصبح، وثلاثًا حين تُمسي، وتقول: (اللهم إني أعوذ بك من الكفر والفقر، اللهم إني أعوذ بك من عذاب القبر)، تُعيدها ثلاثًا حين تُصبح، وثلاثًا حين تُمسي؟ قال: نعم، يا بني، إني سمعتُ رسولَ الله ﷺ يدعو بهنَّ، فأنا أُحبُّ أن أستنَّ بسُنَّ.',
        'أذكار الصباح',
      );
      addThekerData(
        'أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.',
        '',
        '1',
        'عن عبدالله بن عبدالرحمن بن أبزى، عن أبيه -رضي الله عنهما- قال: كان النبيُّ ﷺ إذا أصبح قال: أصبحنا على فطرة الإسلام، وكلمة الإخلاص، ودين نبينا محمدٍ ﷺ، وملّة أبينا إبراهيم حنيفًا مسلمًا',
        'أذكار الصباح',
      );
      addThekerData(
        'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي ، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي ، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ ، وَمِنْ خَلْفِي ، وَعَنْ يَمِينِي ، وَعَنْ شِمَالِي ، وَمِنْ فَوْقِي ، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي ',
        '',
        '1',
        'عن ابْن عُمَرَ ، قال : لَمْ يَكُنْ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَدَعُ هَؤُلَاءِ الدَّعَوَاتِ ، حِينَ يُمْسِي ، وَحِينَ يُصْبِحُ : ( اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي ، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي ، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ ، وَمِنْ خَلْفِي ، وَعَنْ يَمِينِي ، وَعَنْ شِمَالِي ، وَمِنْ فَوْقِي ، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي ) .',
        'أذكار الصباح',
      );
      addThekerData(
        ' لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
        ' كَانَ لَهُ عِدْلَ رَقَبَةٍ مِنْ وَلَدِ إِسْمَاعِيلَ، وَكُتِبَ لَهُ عَشْرُ حَسَنَاتٍ، وَحُطَّ عَنْهُ عَشْرُ سَيِّئَاتٍ، وَرُفِعَ لَهُ عَشْرُ دَرَجَاتٍ، وَكَانَ فِي حِرْزٍ مِنَ الشَّيْطَانِ حَتَّى يُمْسِيَ',
        '10',
        'عَنْ أَبِي عَيَّاشٍ، أَنَّ رَسُولَ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، قَالَ: ( مَنْ قَالَ إِذَا أَصْبَحَ: لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، كَانَ لَهُ عِدْلَ رَقَبَةٍ مِنْ وَلَدِ إِسْمَاعِيلَ، وَكُتِبَ لَهُ عَشْرُ حَسَنَاتٍ، وَحُطَّ عَنْهُ عَشْرُ سَيِّئَاتٍ، وَرُفِعَ لَهُ عَشْرُ دَرَجَاتٍ، وَكَانَ فِي حِرْزٍ مِنَ الشَّيْطَانِ حَتَّى يُمْسِيَ، وَإِنْ قَالَهَا إِذَا أَمْسَى كَانَ لَهُ مِثْلُ ذَلِكَ حَتَّى يُصْبِحَ ) .',
        'أذكار الصباح',
      );
      addThekerData(
        ' لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
        ' كَانَ لَهُ عِدْلَ رَقَبَةٍ مِنْ وَلَدِ إِسْمَاعِيلَ، وَكُتِبَ لَهُ عَشْرُ حَسَنَاتٍ، وَحُطَّ عَنْهُ عَشْرُ سَيِّئَاتٍ، وَرُفِعَ لَهُ عَشْرُ دَرَجَاتٍ، وَكَانَ فِي حِرْزٍ مِنَ الشَّيْطَانِ حَتَّى يُمْسِيَ',
        '100',
        'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللَّهُ عَنْهُ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ : ( مَنْ قَالَ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، فِي يَوْمٍ مِائَةَ مَرَّةٍ ؛ كَانَتْ لَهُ عَدْلَ عَشْرِ رِقَابٍ ، وَكُتِبَ لَهُ مِائَةُ حَسَنَةٍ ، وَمُحِيَتْ عَنْهُ مِائَةُ سَيِّئَةٍ ، وَكَانَتْ لَهُ حِرْزًا مِنْ الشَّيْطَانِ يَوْمَهُ ذَلِكَ حَتَّى يُمْسِيَ ، وَلَمْ يَأْتِ أَحَدٌ بِأَفْضَلَ مِمَّا جَاءَ ، إِلَّا رَجُلٌ عَمِلَ أَكْثَرَ مِنْهُ ) .',
        'أذكار الصباح',
      );
// أذكار المساء
      addThekerData(
        'سبحان الله وبحمده',
        'حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.',
        '100',
        'عَنْ أَبِي هُرَيْرَةَ ، قَالَ : قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( مَنْ قَالَ: حِينَ يُصْبِحُ وَحِينَ يُمْسِي : سُبْحَانَ اللهِ وَبِحَمْدِهِ ، مِائَةَ مَرَّةٍ ، لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ ، بِأَفْضَلَ مِمَّا جَاءَ بِهِ ، إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ ، أَوْ زَادَ عَلَيْهِ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ ، وَالْحَمْدُ لِلَّهِ لَا إِلَهَ إِلَّا اللهُ ، وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا ، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
        '',
        '1',
        '''
      عن ابن مسعود قَالَ : كَانَ نَبِيُّ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ ، إِذَا أَمْسَى قَالَ : ( أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ ، وَالْحَمْدُ لِلَّهِ لَا إِلَهَ إِلَّا اللهُ ، وَحْدَهُ لَا شَرِيكَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا ، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ ) .
وَإِذَا أَصْبَحَ قَالَ ذَلِكَ أَيْضًا : ( أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ ) .
      ''',
        'أذكار المساء',
      );
      addThekerData(
        'اللَّهُمَّ أَنْتَ رَبِّي لاَ إِلَهَ إِلَّا أَنْت َ، خَلَقْتَنِي وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي ، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
        'مَنْ قَالَهَا مِنَ النَّهَارِ مُوقِنًا بِهَا ، فَمَاتَ مِنْ يَوْمِهِ قَبْلَ أَنْ يُمْسِيَ ، فَهُوَ مِنْ أَهْلِ الجَنَّةِ ، وَمَنْ قَالَهَا مِنَ اللَّيْلِ وَهُوَ مُوقِنٌ بِهَا ، فَمَاتَ قَبْلَ أَنْ يُصْبِحَ ، فَهُوَ مِنْ أَهْلِ الجَنَّةِ',
        '1',
        'عن شَدَّاد بْن أَوْسٍ رَضِيَ اللَّهُ عَنْهُ: عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( سَيِّدُ الِاسْتِغْفَارِ أَنْ تَقُولَ : اللَّهُمَّ أَنْتَ رَبِّي لاَ إِلَهَ إِلَّا أَنْت َ، خَلَقْتَنِي وَأَنَا عَبْدُكَ ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي ، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين). ',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ',
        'من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين).',
        '3',
        'عن عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'اللَّهُمَّ بِكَ أَمْسَيْنَا ، وَبِكَ أَصْبَحْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوتُ ، وَإِلَيْكَ الْمَصِيرُ',
        '',
        '1',
        'عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ كَانَ يَقُولُ إِذَا أَصْبَحَ : ( اللهُمَّ بِكَ أَصْبَحْنَا ، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوتُ ، وَإِلَيْكَ النُّشُورُ ) وَإِذَا أَمْسَى قَالَ : ( اللَّهُمَّ بِكَ أَمْسَيْنَا ، وَبِكَ أَصْبَحْنَا ، وَبِكَ نَحْيَا ، وَبِكَ نَمُوتُ ، وَإِلَيْكَ الْمَصِيرُ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'اللَّهُمَّ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، لَا إِلَهَ إِلَّا أَنْتَ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ',
        '',
        '1',
        ' عَنْ أَبِي رَاشِدٍ الْحُبْرَانِيِّ قَالَ : أَتَيْتُ عَبْدَ اللَّهِ بْنَ عَمْرِو بْنِ الْعَاصِ ، فَقُلْتُ لَهُ : حَدِّثْنَا مَا سَمِعْتَ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ . فَأَلْقَى بَيْنَ يَدَيَّ صَحِيفَةً ، فَقَالَ : هَذَا مَا كَتَبَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ . فَنَظَرْتُ فِيهَا فَإِذَا فِيهَا : أَنَّ أَبَا بَكْرٍ الصِّدِّيقَ قَالَ يَا رَسُولَ اللَّهِ عَلِّمْنِي مَا أَقُولُ إِذَا أَصْبَحْتُ وَإِذَا أَمْسَيْتُ ؟ فَقَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ : ( يَا أَبَا بَكْرٍ ، قُلْ اللَّهُمَّ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ ، لَا إِلَهَ إِلَّا أَنْتَ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي ، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي ، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ ، وَمِنْ خَلْفِي ، وَعَنْ يَمِينِي ، وَعَنْ شِمَالِي ، وَمِنْ فَوْقِي ، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي ',
        '',
        '1',
        'عن ابْن عُمَرَ ، قال : لَمْ يَكُنْ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَدَعُ هَؤُلَاءِ الدَّعَوَاتِ ، حِينَ يُمْسِي ، وَحِينَ يُصْبِحُ : ( اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي ، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي ، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ ، وَمِنْ خَلْفِي ، وَعَنْ يَمِينِي ، وَعَنْ شِمَالِي ، وَمِنْ فَوْقِي ، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي ) .',
        'أذكار المساء',
      );
      addThekerData(
        'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
        'لَمْ يَضُرَّهُ شَيْءٌ',
        '3',
        'عن عثمان بن عفان رضي الله عنه قال : سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ : ( مَنْ قَالَ : بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ ثَلَاثَ مَرَّاتٍ لَمْ تُصِبْهُ فَجْأَةُ بَلَاءٍ حَتَّى يُصْبِحَ ، وَمَنْ قَالَهَا حِينَ يُصْبِحُ ثَلَاثُ مَرَّاتٍ ، لَمْ تُصِبْهُ فَجْأَةُ بَلَاءٍ حَتَّى يُمْسِيَ ) .',
        'أذكار المساء',
      );
      addThekerData(
        'رَضِيتُ بِاللهِ رَبًّا ، وَبِالْإِسْلَامِ دِينًا ، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا',
        'كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ',
        '3',
        'عن خَادِم النَّبِيِّ، صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ ، قَالَ: قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : ( مَا مِنْ عَبْدٍ مُسْلِمٍ يَقُولُ حِينَ يُصْبِحُ وَحِينَ يُمْسِي ثَلَاثَ مَرَّاتٍ : رَضِيتُ بِاللهِ رَبًّا ، وَبِالْإِسْلَامِ دِينًا ، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا ، إِلَّا كَانَ حَقًّا عَلَى اللهِ أَنْ يُرْضِيَهُ يَوْمَ الْقِيَامَةِ )',
        'أذكار المساء',
      );
      addThekerData(
        'اللّهُـمَّ ما أَمْسَى بِي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر. ',
        'أدى شكر يومه.',
        '1',
        '',
        'أذكار المساء',
      );
      addThekerData(
        'اللّهُـمَّ إِنِّـي أَمْسَيْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
        'من قالها أعتقه الله من النار.',
        '4',
        'عن أنس بن مالك -رضي الله عنه- يقول: إن رسول الله -صلى الله عليه وسلم- قال: من قال حين يصبح: اللهم أصبحنا نشهدك ونشهد حملة عرشك وملائكتك وجميع خلقك أنك أنت الله، لا إله إلا أنت وحدك لا شريك لك، وأن محمدًا عبدك ورسولك، إلا غفر الله له ما أصاب في يومه ذلك، وإن قالها حين يمسي غفر الله له ما أصاب في تلك الليلة من ذنب.',
        'أذكار المساء',
      );
      addThekerData(
        'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ، اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ. ',
        '',
        '3',
        ' عن عبدالرحمن ابن أبي بكرة: أنه قال لأبيه : أيا أبه، إني أسمعك تدعو كلَّ غداةٍ: (اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت) ثلاثًا حين تُصبح، وثلاثًا حين تُمسي، وتقول: (اللهم إني أعوذ بك من الكفر والفقر، اللهم إني أعوذ بك من عذاب القبر)، تُعيدها ثلاثًا حين تُصبح، وثلاثًا حين تُمسي؟ قال: نعم، يا بني، إني سمعتُ رسولَ الله ﷺ يدعو بهنَّ، فأنا أُحبُّ أن أستنَّ بسُنَّ.',
        'أذكار المساء',
      );

      addThekerData(
        'أعوذُ بكلماتِ اللهِ التَامَّاتِ مِنْ شَرِ مَا خَلَق',
        '',
        '3',
        ' عن أبي هريرة رضي الله عنه قال: قال النبي صلى الله عليه وسلم : مَن قال إذا أمْسى ثلاثَ مَرَّاتٍ: أعوذُ بكَلِماتِ اللهِ التَّامَّاتِ مِن شَرِّ ما خَلَقَ، لم تَضُرَّه حُمَةٌ تلك اللَّيلةَ. ',
        'أذكار المساء',
      );
      addThekerData(
        'أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ.',
        '',
        '1',
        'عن عبدالله بن عبدالرحمن بن أبزى، عن أبيه -رضي الله عنهما- قال: كان النبيُّ ﷺ إذا أصبح قال: أصبحنا على فطرة الإسلام، وكلمة الإخلاص، ودين نبينا محمدٍ ﷺ، وملّة أبينا إبراهيم حنيفًا مسلمًا',
        'أذكار المساء',
      );
      addThekerData(
        ' لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
        ' كَانَ لَهُ عِدْلَ رَقَبَةٍ مِنْ وَلَدِ إِسْمَاعِيلَ، وَكُتِبَ لَهُ عَشْرُ حَسَنَاتٍ، وَحُطَّ عَنْهُ عَشْرُ سَيِّئَاتٍ، وَرُفِعَ لَهُ عَشْرُ دَرَجَاتٍ، وَكَانَ فِي حِرْزٍ مِنَ الشَّيْطَانِ حَتَّى يُمْسِيَ',
        '10',
        'عَنْ أَبِي عَيَّاشٍ، أَنَّ رَسُولَ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، قَالَ: ( مَنْ قَالَ إِذَا أَصْبَحَ: لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، كَانَ لَهُ عِدْلَ رَقَبَةٍ مِنْ وَلَدِ إِسْمَاعِيلَ، وَكُتِبَ لَهُ عَشْرُ حَسَنَاتٍ، وَحُطَّ عَنْهُ عَشْرُ سَيِّئَاتٍ، وَرُفِعَ لَهُ عَشْرُ دَرَجَاتٍ، وَكَانَ فِي حِرْزٍ مِنَ الشَّيْطَانِ حَتَّى يُمْسِيَ، وَإِنْ قَالَهَا إِذَا أَمْسَى كَانَ لَهُ مِثْلُ ذَلِكَ حَتَّى يُصْبِحَ ) .',
        'أذكار المساء',
      );
// أذكار بعد الصلاة
      addThekerData(
        '''
أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله.
اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام .''',
        'لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.',
        '1',
        '',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''سُـبْحانَ اللهِ(33) الحمدلله(33) الله أكبر (33) ، ويقول تمام المائة لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو كل شيء قدير''',
        'غفرت له خطاياه وإن كانت مثل زبد البحر',
        '33',
        'حديث أَبِي هُرَيْرَةَ عَنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ : " مَنْ سَبَّحَ اللَّهَ فِي دُبُرِ كُلِّ صَلاةٍ ثَلاثًا وَثَلاثِينَ وَحَمِدَ اللَّهَ ثَلاثًا وَثَلاثِينَ وَكَبَّرَ اللَّهَ ثَلاثًا وَثَلاثِينَ فَتْلِكَ تِسْعَةٌ وَتِسْعُونَ وَقَالَ تَمَامَ الْمِائَةِ لا إِلَهَ إِلاّ اللَّهُ وَحْدَهُ لا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ غُفِرَتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ . "',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''
لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير، لا حول ولا قوة إلا بالله، لا إله إلا الله، ولا نعبد إلا إياه، له النعمة وله الفضل وله الثناء الحسن، لا إله إلا الله، مخلصين له الدين ولو كره الكافرون. 
''',
        '',
        '1',
        'عن أبي الزبير قال: كان ابن الزبير يقول في دبر كل صلاة حين يسلم: لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير، لا حول ولا قوة إلا بالله، لا إله إلا الله، ولا نعبد إلا إياه، له النعمة وله الفضل وله الثناء الحسن، لا إله إلا الله، مخلصين له الدين ولو كره الكافرون. وقال: كان رسول الله صلى الله عليه وسلم يهلل بهن دبر كل صلاة.',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد ''',
        '',
        '1',
        'إنَّ نَبِيَّ اللَّهِ صَلَّى اللهُ عليه وسلَّمَ كانَ يقولُ في دُبُرِ كُلِّ صَلَاةٍ: لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ، وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَدِيرٌ، اللَّهُمَّ لا مَانِعَ لِما أعْطَيْتَ، ولَا مُعْطِيَ لِما مَنَعْتَ، ولَا يَنْفَعُ ذَا الجَدِّ مِنْكَ الجَدُّ ',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.''',
        'لم يمنعه من دخول الجنة إلا أن يموت',
        '1',
        'عن علي ـ رضي الله عنه ـ قال: سمعت نبيكم صلى الله عليه وسلم يقول وهو على أعواد المنبر: من قرأ آية الكرسي دبر كل صلاة لم يمنعه من دخول الجنة إلا الموت،',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.''',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        ' حديث عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ )',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ..''',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        ' حديث عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ )',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.''',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        ' حديث عبد الله بن خبيب رضي الله عنه أن النبي صلى الله عليه وسلم قال له : ( قُلْ : " قُلْ هُوَ اللَّهُ أَحَدٌ " ، وَالمُعَوِّذَتَيْنِ ، حِينَ تُمْسِي وَتُصْبِحُ ثَلاَثَ مَرَّاتٍ ، تَكْفِيكَ مِنْ كُلِّ شَيْءٍ )',
        'أذكار بعد الصلاة',
      );
      addThekerData(
        '''لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير. ''',
        'بعد صلاتي الفجر والمغرب',
        '10',
        'عن أبي ذر ـ رضي الله عنه ـ أن رسول الله صلى الله عليه وسلم قال: من قال في دبر صلاة الفجر وهو ثان رجليه قبل أن يتكلم لا إله إلا الله وحده لا شريك له له الملك وله الحمد يحيي ويميت وهو على كل شيء قدير عشر مرات كتب الله له عشر حسنات، ومحا عنه عشر سيئات، ورفع له عشر درجات، وكان يومه ذلك كله في حرز من كل مكروه، وحرس من الشيطان، ولم ينبغ لذنب أن يدركه في ذلك اليوم إلا الشرك بالله تعالى. /n وعن عمارة بن شبيب السبائي ـ رضي الله عنه ـ قال: قال رسول الله صلى الله عليه وسلم: من قال لا إله إلا الله وحده لا شريك له له الملك وله الحمد يحيي ويميت وهو على كل شيء قدير عشر مرات على إثر المغرب بعث الله له مسلحة ـ أي حرسا ـ يحفظونه من الشيطان حتى يصبح، وكتب الله له بها عشر حسنات موجبات، ومحا عنه عشر سيئات موبقات، وكانت له بعدل عشر رقبات مؤمنات.',
        'أذكار بعد الصلاة',
      );

      /// أذكار النوم
      addThekerData(
        '''اللهم باسمك أموت وأحيا.''',
        '',
        '1',
        'أن رسولَ اللهِ صلى الله عليه وسلم كان إذا أخذَ مضجعهُ وضعَ كفهُ اليُمنى تحتَ خدهِ الأيمنَ ، وقال : ربِّ قنِي عذابكَ يومَ تبعثُ عبادكَ',
        'أذكار النوم',
      );
      addThekerData(
        '''آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. ''',
        'من قرأ آيتين من آخر سورة البقرة في ليلة كفتاه.',
        '1',
        'عن النبيِّ ﷺ قال:"من قرأ بالآيتَيْنِ مِنْ آخِرِ سُورةِ البقَرةِ فِي لَيْلَةٍ كَفَتَاهُ" ',
        'أذكار النوم',
      );
      addThekerData(
        '''قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.''',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        'ديث عائشة -رضي الله عنها-: أنَّ النبي ﷺ كان إذا أوى إلى فراشه كلَّ ليلةٍ جمع كفَّيه، ثم نفث فيهما، فقرأ فيهما: قُلْ هُوَ اللَّهُ أَحَدٌ [الإخلاص]، وقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ [الفلق]، وقُلْ أَعُوذُ بِرَبِّ النَّاسِ [الناس]، ثم يمسح بهما ما استطاع من جسده، يبدأ بهما على رأسه ووجهه وما أقبل من جسده، يفعل ذلك ثلاث مرَّاتٍ',
        'أذكار النوم',
      );
      addThekerData(
        '''قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ..''',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        'ديث عائشة -رضي الله عنها-: أنَّ النبي ﷺ كان إذا أوى إلى فراشه كلَّ ليلةٍ جمع كفَّيه، ثم نفث فيهما، فقرأ فيهما: قُلْ هُوَ اللَّهُ أَحَدٌ [الإخلاص]، وقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ [الفلق]، وقُلْ أَعُوذُ بِرَبِّ النَّاسِ [الناس]، ثم يمسح بهما ما استطاع من جسده، يبدأ بهما على رأسه ووجهه وما أقبل من جسده، يفعل ذلك ثلاث مرَّاتٍ',
        'أذكار النوم',
      );
      addThekerData(
        'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ',
        'ثلاث مرات بعد صلاتي الفجروالمغرب، ومرة بعد الصلوات الأخرى',
        '1',
        'ديث عائشة -رضي الله عنها-: أنَّ النبي ﷺ كان إذا أوى إلى فراشه كلَّ ليلةٍ جمع كفَّيه، ثم نفث فيهما، فقرأ فيهما: قُلْ هُوَ اللَّهُ أَحَدٌ [الإخلاص]، وقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ [الفلق]، وقُلْ أَعُوذُ بِرَبِّ النَّاسِ [الناس]، ثم يمسح بهما ما استطاع من جسده، يبدأ بهما على رأسه ووجهه وما أقبل من جسده، يفعل ذلك ثلاث مرَّاتٍ',
        'أذكار النوم',
      );
      addThekerData(
        '''اللهم ربَّ السَّماوات، وربَّ الأرض، وربَّ العرش العظيم، ربنا وربّ كل شيءٍ، فالق الحبِّ والنَّوى، ومُنزل التَّوراة والإنجيل والفُرقان، أعوذ بك من شرِّ كل شيءٍ أنت آخذٌ بناصيته، اللهم أنت الأول، فليس قبلك شيءٌ، وأنت الآخر، فليس بعدك شيءٌ، وأنت الظَّاهر، فليس فوقك شيءٌ، وأنت الباطن، فليس دونك شيءٌ، اقضِ عنا الدَّينَ، وأغننا من الفقر''',
        '',
        '1',
        'عن سهيلٍ قال: كان أبو صالحٍ يأمرنا إذا أراد أحدُنا أن ينام أن يضطجع على شقِّه الأيمن، ثم يقول: اللهم ربَّ السَّماوات، وربَّ الأرض، وربَّ العرش العظيم، ربنا وربّ كل شيءٍ، فالق الحبِّ والنَّوى، ومُنزل التَّوراة والإنجيل والفُرقان، أعوذ بك من شرِّ كل شيءٍ أنت آخذٌ بناصيته، اللهم أنت الأول، فليس قبلك شيءٌ، وأنت الآخر، فليس بعدك شيءٌ، وأنت الظَّاهر، فليس فوقك شيءٌ، وأنت الباطن، فليس دونك شيءٌ، اقضِ عنا الدَّينَ، وأغننا من الفقر',
        'أذكار النوم',
      );

      addThekerData(
        'اللهُمَّ أَسلَمتُ نَفسِي إِلَيك وَوجهتُ وَجهِي إِلَيك، وَفَوَّضْتُ أّمرِي إِلَيك، رغبةَ ورهبةَ إليك، لا مَلجَأَ ولا مَنْجَى مِنكَ إلا إِليك، آمنتُ بِكِتَابِك الذي أَنْزَلت، وَنَبِيك الذي أرسلتَ',
        'إن مات يموت على الفطرة أي على دين الإسلام وسنة خير الأنام',
        '1',
        'عن النَّبيِّ صلَّى اللهُ عليه وسلَّم أنَّه كان إذا أخَذ مَضجَعَه قال: ( اللَّهمَّ إنِّي أسلَمْتُ نفسي إليك ووجَّهْتُ وجهي إليك وفوَّضْتُ أمري إليك رغبةً ورهبةً إليك لا ملجأَ منك إلَّا إليك ).',
        'أذكار النوم',
      );

      addThekerData(
        'اللهُمَ قِني عَذَابَك يَوم تَبعَثُ عِبادك',
        '',
        '3',
        'عن أم المؤمنين حفصة رضي الله عنها أن رسولَ اللهِ صلَّى اللهُ عليهِ وسلَّم، كان إذا أراد أن يَرْقُدَ وضع يدَه اليمنى تحتَ خَدِّهِ ثم يقول : اللهم قِنِي عذابَك يوم تبعثُ عبادَك - ثلاثَ مِرارٍ .',
        'أذكار النوم',
      );

      addThekerData(
        'اللهُمَ خلقتَ نفسي وأنت! تتوفاها، لكَ مماتها ومَحياهَا، إِن أَحييتَها فَاحفَظها، وإن أَمتَّها فَاغفرِ لَها، اللهم إِني أَسألُكَ العَافية',
        '',
        '1',
        'عن ابن عمر رضي الله عنها قال أنه أمر رجلاً إذا أخذ مضجعه أن يقول:(اللهم خلقت نفسي وأنت تتوفاها، لك ممتاتها ومحياها، إن أحييتها فاحفظها، وإن أمتها فاغفر لها، اللهم إني أسألك العافية)، قال ابن عمر: سمعته من رسول الله صلى الله عليه وسلم',
        'أذكار النوم',
      );

      addThekerData(
        'الحمدللهِ الذي أطعَمَنا وسَقَانَا، وكَفَانَا فكم ممن لا كَافِي لَهُ وَلا مُؤوِي',
        '',
        '1',
        'عن أنسِ بن مالكٍ عن رضي الله عنهُ: أنَّ رسولَ اللهِ صلَّى اللهُ عليه وسلَّم كان إذا أوى إلى فراشِه قال: ( الحمدُ للهِ الَّذي أطعَمنا وسقانا وكفانا فكم ممَّن لا كافيَ له ولا مُؤويَ )',
        'أذكار النوم',
      );

      /// أذكار الاستيقاظ
      addThekerData(
        '''الحمدلله الذي عافاني في جسدي، ورد إلي روحي، وأذن لي بذكره.''',
        '',
        '1',
        'حديث أبي هريرة رضي الله عنه قال صلى الله عليه وسلم: فإذا استيقظ فليقل الحمد الله الذي عافاني في جسدي ورد علي روحي وأذن لي بذكره. ',
        'أذكار الاستيقاظ',
      );
      addThekerData(
        '''الحمدلله الذي أحيانا بعد ما أماتنا. وإليه النشور.''',
        '',
        '1',
        'انَ النبيُّ صَلَّى اللهُ عليه وسلَّمَ إذَا أوَى إلى فِرَاشِهِ قَالَ: اللَّهُمَّ باسْمِكَ أحْيَا وأَمُوتُ، وإذَا أصْبَحَ قَالَ: الحَمْدُ لِلَّهِ الذي أحْيَانَا بَعْدَ ما أمَاتَنَا، وإلَيْهِ النُّشُورُ.',
        'أذكار الاستيقاظ',
      );
    } else {
      print('MAIN theker data added before!');
    }
  } else {
    print('MAIN data added before');
  }
}
