//
//  main.cpp
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

#include "Generator.hpp"

#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
#include <algorithm>

void Generator::generate_password(long int dashcount)
{
//    int dashcount = 3;
    std::string ch_list = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
    std::string temp = "";
//    std::srand(std::time(nullptr));
//    std::random_shuffle(ch_list.begin(), ch_list.end());
    
    for(int i=0; i < 6*(dashcount+1); i++)
        temp = (i%6 == 0 && i != 0) ? (temp += "-") : (temp += ch_list[rand()%ch_list.length()]);
    std::cout << temp << std::endl;

//    char* password;
//    password = &temp[0];
//    return password;
}
