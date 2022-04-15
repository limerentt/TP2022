#include "TreeTestCase.h"
#include "Tree.h"
#include <cstdio>
#include <fstream>

TEST(TreeTestCase, check_tree) {
    ASSERT_THROW(GetTree("./funn_name", true), std::invalid_argument);
    std::ofstream {"made_by_alex.cpp"};
    std::filesystem::create_directory("new_directory");
    ASSERT_THROW(GetTree("./made_by_alex.cpp", false), std::invalid_argument);
    ASSERT_EQ(GetTree(".", true),  GetTree(".", true));
    ASSERT_NO_THROW(FilterEmptyNodes(GetTree(".", false), "."));
    std::remove("made_by_alex.cpp");
    std::remove("new_directory");
}