pageextension 50103 "ABW Sales Cr. Memo Subform" extends "Sales Cr. Memo Subform"
{
    layout
    {
        addafter("No.")
        {
            field("ABW Course Edition"; Rec."ABW Course Edition") { ApplicationArea = All; }
        }
    }
}