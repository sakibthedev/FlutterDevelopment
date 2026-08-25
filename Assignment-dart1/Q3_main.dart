import 'dart:io';

List<Map<String, dynamic>> movieCollections = [];

void addMovie() {
  print("Add Movie:");

  print("Enter movie name: ");
  String name = stdin.readLineSync()!;

  print("Enter Movie rating:");
  double movieRating = double.parse(stdin.readLineSync()!);

  if (movieRating < 0 || movieRating > 10) {
    print("Invalid movie rating. Please enter a rating between 0 and 10.");
    return;
  }

  movieCollections.add({
    "name": name,
    "movieRating": movieRating,
  });

  print("Movie added successfully!");
}

void removeMovie() {
  print("Enter movie name to remove: ");
  String name = stdin.readLineSync()!;

  bool found = false;

  for (var movie in movieCollections) {
    if (movie["name"] == name) {
      movieCollections.remove(movie);
      found = true;
      break;
    }
  }

  if (found) {
    print("Movie removed successfully.");
  } else {
    print("Movie not found.");
  }
}

void displayMovies() {
  if (movieCollections.isEmpty) {
    print("No movies available.");
  } else {
    print("Movies:");
    for (var movie in movieCollections) {
      print("Name: ${movie["name"]}, Rating: ${movie["movieRating"]}");
    }
  }
}

void calculateAverageRating() {
  if (movieCollections.isEmpty) {
    print("No movies available to calculate average rating.");
    return;
  }

  double totalRating = 0.0;

  for (var movie in movieCollections) {
    totalRating += movie["movieRating"];
  }

  double averageRating = totalRating / movieCollections.length;
  print("Average Movie Rating: ${averageRating.toString()}");
}


void main(){

  while (true) {
    print("\nMovie Collection");
    print("1. Add Movie");
    print("2. Remove Movie");
    print("3. Display Movies");
    print("4. Calculate Average Rating");
    print("5. Exit");
    print("Enter your choice: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addMovie();
        break;
      case 2:
        removeMovie();
        break;
      case 3:
        displayMovies();
        break;
      case 4:
        calculateAverageRating();
        break;
      case 5:
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }


}
