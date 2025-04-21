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
                field("No."; Rec."No.")
                {
                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;




                }
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

            part(Editions; "Course Editions")
            {
                SubPageLink = "Course No." = field("No.");
            }

            group(Invoicing)
            {
                CaptionML = ENU = 'Invoicing', ESP = 'Facturación';
                field(Price; Rec.Price) { }
            }
        }
    }

}