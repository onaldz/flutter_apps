class Program {
  String imageUrl;
  String name;
  String software;
  String license;

  Program({
     this.imageUrl,
     this.name,
     this.software,
     this.license,
  });
}

final List<Program> programs = [
  Program(
    imageUrl: 'assets/images/atom.jpg',
    name: 'Atom',
    software: 'license',
    license: 'Free',
  ),
  Program(
    imageUrl: 'assets/images/notepad.jpg',
    name: 'Notepad ++',
    software: 'license',
    license: 'Free',
  ),
  Program(
    imageUrl: 'assets/images/vscode.jpg',
    name: 'Visual Studio Code',
    software: 'license',
    license: 'Free',
  ),
  Program(
    imageUrl: 'assets/images/sublime.jpg',
    name: 'Sublime Text',
    software: 'license',
    license: 'Free',
  ),
  Program(
    imageUrl: 'assets/images/bluefish.jpg',
    name: 'Blue Fish',
    software: 'license',
    license: 'Free',
  ),
];