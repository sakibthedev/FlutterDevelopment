// Function
void sayHello(String name, int id) {
  print("Hello $name Your id is $id");
}

int sum(int a, int b) {
  int sum = a + b;
  return sum;
}

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  // Loops - A loop allows us to excute a block of code repeatedly and we don't have to code it again
  // print(1);
  // print(2);
  // print(3);
  // ...

  /*
    For Loop:
      initialization(int i = 0)
      condition (i <= 10)
      update (i++)
  */
  for (int i = 0; i <= 10; i++) {
    print(i);
  }

  // while loop is used when repoetation depends on a condition
  int passwordAttempt = 0;

  while (passwordAttempt < 3) {
    print("try again..");
    passwordAttempt++;
  }

  int i = 10;

  do {
    print(i);
    i++;
  } while (i <= 5);

  // Break, continue
  for (int i = 1; i <= 10; i++) {
    // Break will stop loop on a condition
    if (i == 5) {
      break;
    }
    print(i);
  }

  for (int i = 1; i <= 5; i++) {
    // Continue skips a iteration on a condition
    if (i == 3) {
      continue;
    }

    print(i);
  }

  sayHello("Tonmoy", 22);
  sayHello("Nafiz", 44);
  sayHello("Firoz", 66);

  int result = sum(10, 5);
  print(result);

  print(isEven(10));
  print(isEven(7));

  void createUser({required String name, required int age}) {
    print(name);
    print(age);
  }

  createUser(name: "Tonmoy", age: 22);

  print("Wasimul\nTonmoy");
}


/* ----------Scope---------- */

int a = 20; // Global Access from anywhere
int b = 30;

void add(int x, int y) {
  int z =
      x +
      y; // can't be access from anywhere as it would destoryed after excution
  print(z);
}

void main() {
  // Access only in mian function
  int i = 10;
  int j = 20;

  add(i, j);
  add(a, b);
  add(a, i);
  // add(i, z);
}



