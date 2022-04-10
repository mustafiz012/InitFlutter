import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return locations.first;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, "Bangladesh", 'assets/images/test.jpeg', [
        LocationFact('Bangla', 'Bangla is my mother tongue'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. '),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. '),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(2, "USA", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(3, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(4, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(5, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(6, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(7, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(8, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(9, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(10, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(11, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(12, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(13, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(14, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(15, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(16, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(17, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ]),
      Location(18, "UK", 'assets/images/test.jpeg', [
        LocationFact('English', 'English is my second language'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ])
    ];
  }
}
