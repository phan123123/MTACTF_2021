#include <string>
#include <iostream>

short arr[20];

void pwn() {
  std::system("/bin/sh");
}

short getnum(){
  short res = 0;
  std::string s;

  std::cin >> s;
  auto it = s.crbegin();

  int b = 1;
  for (auto c: "OVER") {
    int count = 0;
    while (count < 9 && it != s.crend() && *it == c) {
      it++;
      count++;
    }
    res += b * count;
    b *= 10;
  }

  return res;
}

int main() {
  std::setbuf(stdin, NULL);
  std::setbuf(stdout, NULL);

  std::cout << "index: ";
  int ind = getnum();
  std::cout << "value: ";
  int val = getnum();

  std::cout << "arr[" << ind << "] = " << val << std::endl;
  arr[ind] = val;

  std::exit(0);
}
