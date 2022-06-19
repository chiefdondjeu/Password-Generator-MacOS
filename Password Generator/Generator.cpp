//
//  Generator.cpp
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
#include <random>

void Generator::generate_password(long int dashcount)
{
    std::string ch_list = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
    std::string temp = "";
    
    std::srand((unsigned)std::time(nullptr));
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(ch_list.begin(), ch_list.end(), g);
    
    for(int i=0; i < 6*(dashcount+1); i++)
        temp = (i%6 == 0 && i != 0) ? (temp += "-") : (temp += ch_list[rand()%ch_list.length()]);
    std::cout << temp << std::endl;

//    char* password;
//    password = &temp[0];
//    return password;
}
