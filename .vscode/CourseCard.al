page 50101 "Course Card"
{
    CaptionML = ENU = 'Course Card', ESP = 'Ficha Curso';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;

    // Lists
    // History
    // Administration
    // None   no aparece en el buscador


    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(General)
            {
                CaptionML = ENU = 'General', ESP = 'General';
                field("No."; Rec."No.") { }
                field(Name; Rec.Name) { }
            }

            group(TrainingDetails)
            {
                CaptionML = ENU = 'TrainingDetails', ESP = 'Detalles';
                field("Content Description"; Rec."Content Description") { }
                field("Duration (hours)"; Rec."Duration (hours)") { }
                field("Language Code"; Rec."Language Code") { }
                field("Type (Option)"; Rec."Type (Option)") { }
                field("Type (Enum)"; Rec."Type (Enum)") { }
            }
            group(Invoicing)
            {
                CaptionML = ENU = 'Invoicing', ESP = 'Facturación';
                field(Price; Rec.Price) { }
            }
        }
    }

}