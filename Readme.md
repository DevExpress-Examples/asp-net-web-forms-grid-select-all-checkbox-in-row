<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128541407/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4551)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to implement the "Select All" CheckBox editor in the ASPxGridView's row
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4551/)**
<!-- run online end -->


<p>This example shows how to implement the "Select All" CheckBox editor in the ASPxGridView's row.</p><p>If an end-user checks the ASPxCheckBox in the ASPxGridView's "All" column, other ASPxCheckBoxes in this row will set checked. If an end-user unchecks the ASPxCheckBox in the ASPxGridView's "All" column, other ASPxCheckBoxes in this row will set unchecked. If all CheckBoxes in the ASPxGridView's row are checked the ASPxCheckBox  in the ASPxGridView's "All" columns will set checked. If at least one of CheckBoxes in the ASPxGridView's row is unchecked, the ASPxCheckBox in the ASPxGridView's "All" columns will set unchecked.</p><p>To implement this scenario you can handle the <a href="https://docs.microsoft.com/en-us/dotnet/api/system.web.ui.control.init?view=netframework-4.8"><u>ASPxCheckBox.Init</u></a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientCheckBox_CheckedChangedtopic"><u>ASPxClientCheckBox.CheckedChanged</u></a> events for all CheckBoxs.</p>

<br/>


