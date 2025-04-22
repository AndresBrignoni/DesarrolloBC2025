page 50105 "CLIP Application Area"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Application Area Setup";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Basic; rec.Basic) { }
                field("Fixed Assets"; rec."Fixed Assets") { }
            }
        }
        area(Factboxes)
        { }
    }
}