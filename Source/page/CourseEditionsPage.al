page 50103 "Course Editions"
{
    CaptionML = ENU = 'Course Editions', ESP = 'Ediciones del curso';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Course Edition";

    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("Course No."; Rec."Course No.") { }
                field(Edition; Rec.Edition) { }
                field("Start Date"; Rec."Start Date") { }
                field("Max. students"; Rec."Max. students") { }

            }
        }
    }
}