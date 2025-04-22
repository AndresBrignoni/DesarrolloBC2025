page 50103 "Course Editions Factbox"
{
    Caption = 'Course Editions', Comment = 'ESP = "Ediciones del curso"';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Course Edition";

    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("Course No."; Rec."Course No.")
                {
                    Visible = false;  // lo podria quitar, pero poniendolo invisible le permito al usuario que lo agregue

                }
                field(Edition; Rec.Edition) { }
                field("Start Date"; Rec."Start Date") { }
                field("Max. students"; Rec."Max. students") { }

            }
        }
    }
}