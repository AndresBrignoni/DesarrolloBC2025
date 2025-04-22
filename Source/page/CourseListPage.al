page 50100 "Course List"
{
    CaptionML = ENU = 'Courses List', ESP = 'Lista Cursos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    Editable = false;
    CardPageId = "Course Card";
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
                RunObject = page "Course Editions";
                RunPageLink = "Course No." = field("No.");
                Image = "EditList";
            }
        }
        area(Promoted)
        {
            group(Category_New)
            {
                CaptionML = ENU = 'New', ESP = 'Nuevo';
            }
            group(Category_Process)
            {
                CaptionML = ENU = 'Process', ESP = 'Procesos';
            }
            group(Category_Report)
            {
                CaptionML = ENU = 'Report', ESP = 'Reportes';
            }
            group(Category_Category4)
            {
                CaptionML = ENU = 'MyCategory', ESP = 'MiCategoria';

                actionref(CourseEditions_Promoted; CourseEditions)
                {
                }
            }
        }

    }
}