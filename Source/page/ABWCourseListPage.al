page 50100 "CLIP Course List"
{
    Caption = 'Courses List', Comment = 'ESP = "Lista Cursos"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CLIP Course";
    Editable = false;
    CardPageId = "CLIP Course Card";
    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("No."; Rec."No.") { }
                field(Name; Rec.Name)
                {
                    // ApplicationArea = Manufacturing;  // desaparece porque ese area no esta marcado para mostrar
                }
                field("Duration (hours)"; Rec."Duration (hours)") { }
                field(Price; Rec.Price) { }
                field("Language Code"; Rec."Language Code") { }
                field("Type (Enum)"; Rec."Type (Enum)") { }
            }
        }
        area(FactBoxes)
        {
            part(Editions; "CLIP Course Editions Factbox")
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
                Caption = 'Course Editions', Comment = 'ESP = "Ediciones del curso"';
                RunObject = page "CLIP Course Editions";
                RunPageLink = "Course No." = field("No.");
                Image = "EditList";
            }
        }
        area(Promoted)
        {
            group(Category_New)
            {
                Caption = 'New', Comment = 'ESP = "Nuevo"';
            }
            group(Category_Process)
            {
                Caption = 'Process', Comment = 'ESP = "Procesos"';
            }
            group(Category_Report)
            {
                Caption = 'Report', Comment = 'ESP = "Reportes"';
            }
            group(Category_Category4)
            {
                Caption = 'MyCategory', Comment = 'ESP = "MiCategoria"';

                actionref(CourseEditions_Promoted; CourseEditions)
                {
                }
            }
        }

    }
}