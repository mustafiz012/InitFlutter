import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location("Bangladesh", 'assets/images/test.jpeg', [
        LocationFact('Bangla', 'Bangla is my mother tongue'),
        LocationFact('The Perfect Paragraph',
            'As Michael Harvey writes, paragraphs are “in essence—a form of punctuation, and like other forms of punctuation they are meant to make written material easy to read.”[1] Effective paragraphs are the fundamental units of academic writing; consequently, the thoughtful, multifaceted arguments that your professors expect depend on them. Without good paragraphs, you simply cannot clearly convey sequential points and their relationships to one another. ')
      ])
    ];
  }
}
