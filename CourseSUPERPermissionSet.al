permissionset 50100 "CourseSUPER"
{
    Assignable = true;
    Permissions = tabledata Course = RIMD,
        tabledata "Course Edition" = RIMD,
        tabledata "Courses Setup" = RIMD,
        table Course = X,
        table "Course Edition" = X,
        table "Courses Setup" = X,
        page "Course Card" = X,
        page "Course Editions" = X,
        page "Course Editions Factbox" = X,
        page "Course List" = X,
        page "Courses Setup" = X;
}