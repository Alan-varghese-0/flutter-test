class Laptop {
  turnon() {
    print("the lap is on");
  }

  turnof() {
    print("the lap is off");
  }
}

class Macbook implements Laptop {
  @override
  turnon() {
    print("the mac is now on");
  }

  @override
  turnof() {
    print("the mac is now turn off");
  }
}

void main(List<String> args) {
  Macbook mac = Macbook();
  mac.turnon();
  mac.turnof();
}
