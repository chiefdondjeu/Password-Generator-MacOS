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
    int ch_btw = 6; // number of characters better each dashes
    std::string ch_list = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
    std::string password = "";
    
    std::srand((unsigned)std::time(nullptr));
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(ch_list.begin(), ch_list.end(), g);
    
    for(int i=1; i <= ch_btw*(dashnumb+1)+dashnumb; i++)
        password = (i%(ch_btw+1) == 0) ? (password += "-") : (password += ch_list[rand()%ch_list.length()]);
//    std::cout << "From cpp: " << password.length() << std::endl;

    return password;
}
