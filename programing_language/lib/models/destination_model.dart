import 'package:programing_language/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/vscode.jpg',
    name: 'Code Editor Visual Studio Code',
    type: 'Microsoft',
    download: 'Download',
    rating: 5,
    license: 'Free',
  ),
  Activity(
    imageUrl: 'assets/images/atom.jpg',
    name: 'Code Editor Atom',
    type: 'MIT License',
    download: 'Download',
    rating: 4,
    license: 'Free',
  ),
  Activity(
    imageUrl: 'assets/images/sublime.jpg',
    name: 'Code Editor Sublime Text',
    type: 'Sublime HQ',
    download: 'Download',
    rating: 3,
    license: 'Free',
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/bahasa_swift.jpg',
    city: 'Swift',
    country: 'Apple',
    description: 'Swift merupakan bahasa programan Apps pada iOS dan OS X.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_python.jpg',
    city: 'Python',
    country: 'France',
    description: 'Python adalah (interpretatif) dengan metode orientasi objek.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_vb.jpg',
    city: 'Visual Basic',
    country: 'Microsoft',
    description: 'Membuat program berbasis Windows kompleks.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_js.jpg',
    city: 'JavaScript',
    country: 'Oracle',
    description: 'JavaScript bahasa pemrograman jenis interpreter,',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_php.jpg',
    city: 'PHP',
    country: 'CMS',
    description: 'PHP adalah singkatan rekursif untuk "PHP: Hypertext Preprocessor".',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_java.jpg',
    city: 'Java',
    country: 'Android',
    description: 'PHP adalah singkatan rekursif untuk "PHP: Hypertext Preprocessor".',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_kotlin.jpg',
    city: 'Kotlin',
    country: 'Android',
    description: 'PHP adalah singkatan rekursif untuk "PHP: Hypertext Preprocessor".',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_go.jpg',
    city: 'Golang',
    country: 'CMS',
    description: 'PHP adalah singkatan rekursif untuk "PHP: Hypertext Preprocessor".',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahasa_ruby.jpg',
    city: 'Ruby',
    country: 'CMS',
    description: 'PHP adalah singkatan rekursif untuk "PHP: Hypertext Preprocessor".',
    activities: activities,
  ),
];