class MyGridModel {
  String? name;
  String? image;

  MyGridModel({
    required this.name,
    required this.image
});
}

final myModelList = [
  MyGridModel(name: "O'zbekiston", image: 'assets/img/img_4.png'),
  MyGridModel(name: "O'zbekiston", image: 'assets/img/img_4.png'),
  MyGridModel(name: "O'zbekiston", image: 'assets/img/img_4.png'),
  MyGridModel(name: "O'zbekiston", image: 'assets/img/img_4.png'),
  MyGridModel(name: "O'zbekiston", image: 'assets/img/img_4.png')
];

class MyListViewModel {
  String? name;
  String? desc;
  String? image;

  MyListViewModel({
    required this.name,
    required this.desc,
    required this.image
});
}

final myListViewList = [
  MyListViewModel(name: "Qo'mondonlar va Ajdodlar", desc: "Faoliyati va tarixi", image: 'assets/img/img_6.png'),
  MyListViewModel(name: "O'zbekistonning Diqqatga Sazovor Joylari!", desc: "O'zbekistondagi asosiy tarixiy diqqatga sazovor joylar, yodgroliklar va eng yaxshi joylarining tavsifi", image: 'assets/img/img_7.png'),
  MyListViewModel(name: "O'zbekiston Respublikasining birinchi prezidenti", desc: "Islom Abdug'aniyevich Karimov", image: 'assets/img/img_8.png'),
];

class MyListTileModel {
  String? name;
  String? desc;
  String? date;

  MyListTileModel({
    required this.name,
    required this.desc,
    required this.date
});
}

final myListTileModelList = [
  MyListTileModel(name: 'Note', desc: 'Yosh ', date: '12.12.2023'),
  MyListTileModel(name: 'Ot', desc: 'Yosh hali ', date: '12.12.2023'),
  MyListTileModel(name: 'Nota', desc: 'Yoshligini km biladi ', date: '12.12.2023'),
];

