pageextension 50102 "ABW Blanket Sales Ord Subform" extends "Blanket Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field("ABW Course Edition"; Rec."ABW Course Edition") { ApplicationArea = All; }
        }
    }
}