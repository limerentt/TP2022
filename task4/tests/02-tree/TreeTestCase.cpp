#include "TreeTestCase.h"
#include "Tree.h"

TEST(TreeTestCase, check_tree) {
    ASSERT_THROW(GetTree("./funn_name", true), std::invalid_argument);
    std::ofstream {
        "made_by_alex.cpp"
    };
    ASSERT_THROW(GetTree("./made_by_alex.cpp", false), std::invalid_argument);
    std::remove("made_by_alex.cpp");
    ASSERT_EQ(GetTree("..", true),  GetTree("..", true));
}