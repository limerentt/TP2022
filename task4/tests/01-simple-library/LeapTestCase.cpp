#include "LeapTestCase.h"

#include <Functions.h>

TEST(LeapTestCase, get_month_day) {
    ASSERT_EQ(GetMonthDays(2003, 12), 31);
    ASSERT_THROW(IsLeap(-1), std::invalid_argument);
    ASSERT_EQ(IsLeap(1), false);
    ASSERT_EQ(IsLeap(4), true);
    ASSERT_EQ(IsLeap(300), false);
    ASSERT_EQ(IsLeap(400), true);
    ASSERT_EQ(GetMonthDays(1, 2), 28);
    ASSERT_EQ(GetMonthDays(4, 2), 29);
    ASSERT_THROW(GetMonthDays(13, 13), std::invalid_argument);
    ASSERT_EQ(GetMonthDays(1, 4), 30);
    ASSERT_EQ(GetMonthDays(1, 3), 31);
}

