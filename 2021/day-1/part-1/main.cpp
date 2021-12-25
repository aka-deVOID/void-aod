#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

void to_array(std::ifstream file, int array_one) {

}

int main(){
    std::ifstream FILE("inputs.txt");
    
    int count = 0;
    std::string line;

    while (std::getline(FILE, line)) {
        count++;
        std::cout << line;
        int copy_count = count;
        {
            std::string new_line;
            FILE.seekg(copy_count--);
            std::getline(FILE, new_line);
        }
        //if () {

        //}
    }



    return 0;
}