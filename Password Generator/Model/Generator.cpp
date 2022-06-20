//
//  Generator.cpp
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

#include "Generator.hpp"

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <algorithm>
#include <random>

std::string Generator::generate_password(long int dashnumb)
{
    int ch_per_dash = 6;
    std::string ch_list = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
    std::string password = "";
    
    std::srand((unsigned)std::time(nullptr));
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(ch_list.begin(), ch_list.end(), g);
    
    for(int i=0; i < ch_per_dash*(dashnumb+1); i++)
        password = (i%6 == 0 && i != 0) ? (password += "-") : (password += ch_list[rand()%ch_list.length()]);
//    std::cout << "From cpp: " << password << std::endl;

    return password;
}
