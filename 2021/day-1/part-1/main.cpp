#include <iostream>
#include <fstream>
#include <vector>

int main(){
    std::ifstream FILE("inputs.txt");
    
    int count = 0;
    int plug = -1;
    
    for (std::string line; std::getline(FILE, line);) {
        int x = std::stoi(line);
        if (plug != -1 && x > plug) {
            count++;
        }
        plug = x;
    }
    std::cout << count;
    return 0;
}