page 50100 "Course List"
{
    CaptionML = ENU = 'Courses List', ESP = 'Lista Cursos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    Editable = false;
    CardPageId = "Course Card";  // le digo que abra esa cuando hace click en el codigo

    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("No."; Rec."No.") { }
                field(Name; Rec.Name) { }
                field("Duration (hours)"; Rec."Duration (hours)") { }
                field(Price; Rec.Price) { }
                field("Language Code"; Rec."Language Code") { }
                field("Type (Enum)"; Rec."Type (Enum)") { }
            }
        }
        area(FactBoxes)
        {
            part(Editions; "Course Editions Factbox")
            {
                SubPageLink = "Course No." = field("No.");
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(CourseEditions)
            {
                CaptionML = ENU = 'Course Editions', ESP = 'Ediciones del curso';
                // RunObject abrir otro objeto entero (codeunit, pagina, report, xmlport, etc)
                //  se ejecuta uno u otro Runobject o trigger OnAction
                // trigger OnAction()

                RunObject = page "Course Editions";
                RunPageLink = "Course No." = field("No.");
            }
        }

    }
}