pageextension 50100 "ABW Sales Invoice Subform" extends "Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field("ABW Course Edition"; Rec."ABW Course Edition") { ApplicationArea = All; }
        }
    }
}