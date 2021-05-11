class FilmCardModel {
  final String title, image, age, type, rating, date;
  final List<String> sessions;

  FilmCardModel({
    this.title,
    this.age,
    this.image,
    this.rating,
    this.type,
    this.sessions,
    this.date,
  });
}

List<FilmCardModel> filmCards = [
  FilmCardModel(
    image:
        'https://multiplex.ua/images/9c/ce/9cce9e82eb0c5dc7d05d0639dacc2ab0.jpeg',
    title: 'Гнів людський',
    rating: '7.5',
    type: '2D',
    age: '16+',
    date: '20 ТРАВНЯ',
    sessions: [
      '21:30',
      '23:35',
    ],
  ),
  FilmCardModel(
    image:
        'https://multiplex.ua/images/f4/4e/f44e6f56558f21aeddcfbf9d899efedb.jpeg',
    title: 'Коробка',
    rating: '8.5',
    type: '2D',
    age: '12+',
    date: 'ЗАВТРА',
    sessions: ['21:00'],
  ),
  FilmCardModel(
    image:
        'https://multiplex.ua/images/05/c8/05c8ee3615f93b841bd66e9c2579b589.jpeg',
    title: 'Ті, хто бажають моєї смерті',
    rating: '6.5',
    type: '2D',
    age: '16+',
    date: 'ЗАВТРА',
  ),
  FilmCardModel(
    image:
        'https://multiplex.ua/images/26/4e/264e96efcb95e9b64f31a61cf1acd364.jpeg',
    title: 'Мортал Комбат',
    rating: '6.2',
    type: '2D',
    age: '18+',
    date: 'ЗАВТРА',
    sessions: [
      '18:40',
      '21:00',
      '21:50',
      '23:20',
    ],
  ),
];
