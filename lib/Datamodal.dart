class DataModal1 {
  String verse;
  String san;
  String en;
  String guj;
  String hi;
  DataModal1(
      {required this.verse,
      required this.san,
      required this.en,
      required this.guj,
      required this.hi});
  factory DataModal1.fromjosn(Map<String, dynamic> data) {
    return DataModal1(
        verse: data['verse'],
        san: data['san'],
        en: data['en'],
        guj: data['guj'],
        hi: data['hi']);
  }
  String tostring() {
    return "verse:$verse,san:$san,en:$en,guj:$guj,hi:$hi";
  }

  static List<DataModal1> pars(List value) {
    List<DataModal1> list = value.map((e) => DataModal1.fromjosn(e)).toList();
    return list;
  }
}

class DataModal2 {
  String verse2;
  String san2;
  String en2;
  String guj2;
  String hi2;
  DataModal2(
      {required this.verse2,
      required this.san2,
      required this.en2,
      required this.guj2,
      required this.hi2});
  factory DataModal2.fromjosn(Map<String, dynamic> data) {
    return DataModal2(
        verse2: data['verse'],
        san2: data['san'],
        en2: data['en'],
        guj2: data['guj'],
        hi2: data['hi']);
  }
  String tostring() {
    return "verse:$verse2,san:$san2,en:$en2,guj:$guj2,hi:$hi2";
  }

  static List<DataModal2> pars(List value) {
    List<DataModal2> list2 = value.map((e) => DataModal2.fromjosn(e)).toList();
    return list2;
  }
}

class DataModal3 {
  String verse3;
  String san3;
  String en3;
  String guj3;
  String hi3;
  DataModal3(
      {required this.verse3,
      required this.san3,
      required this.en3,
      required this.guj3,
      required this.hi3});
  factory DataModal3.fromjosn(Map<String, dynamic> data) {
    return DataModal3(
        verse3: data['verse'],
        san3: data['san'],
        en3: data['en'],
        guj3: data['guj'],
        hi3: data['hi']);
  }
  String tostring() {
    return "verse:$verse3,san:$san3,en:$en3,guj:$guj3,hi:$hi3";
  }

  static List<DataModal3> pars(List value) {
    List<DataModal3> list3 = value.map((e) => DataModal3.fromjosn(e)).toList();
    return list3;
  }
}

class DataModal4 {
  String verse4;
  String san4;
  String en4;
  String guj4;
  String hi4;
  DataModal4(
      {required this.verse4,
      required this.san4,
      required this.en4,
      required this.guj4,
      required this.hi4});
  factory DataModal4.fromjosn(Map<String, dynamic> data) {
    return DataModal4(
        verse4: data['verse'],
        san4: data['san'],
        en4: data['en'],
        guj4: data['guj'],
        hi4: data['hi']);
  }
  String tostring() {
    return "verse:$verse4,san:$san4,en:$en4,guj:$guj4,hi:$hi4";
  }

  static List<DataModal4> pars(List value) {
    List<DataModal4> list4 = value.map((e) => DataModal4.fromjosn(e)).toList();
    return list4;
  }
}

class DataModal5 {
  String verse5;
  String san5;
  String en5;
  String guj5;
  String hi5;
  DataModal5(
      {required this.verse5,
      required this.san5,
      required this.en5,
      required this.guj5,
      required this.hi5});
  factory DataModal5.fromjosn(Map<String, dynamic> data) {
    return DataModal5(
        verse5: data['verse'],
        san5: data['san'],
        en5: data['en'],
        guj5: data['guj'],
        hi5: data['hi']);
  }
  String tostring() {
    return "verse:$verse5,san:$san5,en:$en5,guj:$guj5,hi:$hi5";
  }

  static List<DataModal5> pars(List value) {
    List<DataModal5> list5 = value.map((e) => DataModal5.fromjosn(e)).toList();
    return list5;
  }
}

class DataModalall {
  int chapter_number;
  String chapter_summary;
  String chapter_summary_hindi;
  int id;
  String image_name;
  String name;
  String name_meaning;
  String name_translation;
  int verses_count;
  String json_path;
  DataModalall(
      {required this.chapter_number,
      required this.chapter_summary,
      required this.chapter_summary_hindi,
      required this.id,
      required this.image_name,
      required this.name,
      required this.name_meaning,
      required this.name_translation,
      required this.verses_count,
      required this.json_path});
  factory DataModalall.fromjosn(Map<String, dynamic> data) {
    return DataModalall(
      chapter_number: data['chapter_number'],
      chapter_summary: data['chapter_summary'],
      chapter_summary_hindi: data['chapter_summary_hindi'],
      id: data['id'],
      image_name: data['image_name'],
      name: data['name'],
      name_meaning: data['name_meaning'],
      name_translation: data['name_translation'],
      verses_count: data['verses_count'],
      json_path: data['json_path'],
    );
  }
  String tostring() {
    return "chapter_number:$chapter_number,san:$chapter_summary,chapter_summary:$chapter_summary_hindi,id:$id,image_name:$image_name,name:$name,name_meaning:$name_meaning,name_translation:$name_translation,verses_count:$verses_count,json_path:$json_path";
  }

  static List<DataModalall> pars(List value) {
    List<DataModalall> listall =
        value.map((e) => DataModalall.fromjosn(e)).toList();
    return listall;
  }
}
