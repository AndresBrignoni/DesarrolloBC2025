pageextension 50101 "ABW Sales Quote Subform" extends "Sales Quote Subform"
{
    layout
    {
        addafter("No.")
        {
            field("ABW Course Edition"; Rec."ABW Course Edition") { ApplicationArea = All; }
        }
    }
}