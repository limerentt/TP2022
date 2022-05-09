#include "AddTestCase.h"
#include "Functions.h"

TEST(AddTestCase, check_plus) {
    ASSERT_GE(Add(1, 3), Add(2, 2));
}