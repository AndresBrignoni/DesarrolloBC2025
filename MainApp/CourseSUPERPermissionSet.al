permissionset 50100 "ABW CourseSUPER"
{
    Caption = 'All for Courses app', Comment = 'ESP="Todos los permisos para los cursos"';
    Assignable = true;
    Permissions = tabledata "ABW Course" = RIMD,
        tabledata "ABW Course Edition" = RIMD,
        tabledata "ABW Courses Setup" = RIMD,
        table "ABW Course" = X,
        table "ABW Course Edition" = X,
        table "ABW Courses Setup" = X,
        page "ABW Course Card" = X,
        page "ABW Course Editions" = X,
        page "ABW Course Editions Factbox" = X,
        page "ABW Course List" = X,
        page "ABW Courses Setup" = X;
}