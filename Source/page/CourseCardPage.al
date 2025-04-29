page 50101 "ABW Course Card"
{
    Caption = 'Course Card', Comment = 'ESP = "Ficha Curso"';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;

    // Lists 
    // History
    // Administration
    // None   no aparece en el buscador


    SourceTable = "ABW Course";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', Comment = 'ESP = "General"';
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
                Caption = 'TrainingDetails', Comment = 'ESP = "Detalles"';
                field("Content Description"; Rec."Content Description") { }
                field("Duration (hours)"; Rec."Duration (hours)") { }
                field("Language Code"; Rec."Language Code") { }
                field("Type (Option)"; Rec."Type (Option)") { }
                field("Type (Enum)"; Rec."Type (Enum)") { }
            }

            part(Editions; "ABW Course Editions Factbox")
            {
                SubPageLink = "Course No." = field("No.");
            }

            group(Invoicing)
            {
                Caption = 'Invoicing', Comment = 'ESP = "Facturación"';
                field(Price; Rec.Price) { }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group") { }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group") { }
            }
        }
    }

}