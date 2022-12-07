Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub chbAll_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim chb As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
		Dim container As GridViewDataItemTemplateContainer = TryCast(chb.NamingContainer, GridViewDataItemTemplateContainer)

		chb.ClientInstanceName = String.Format("chbAll{0}", container.VisibleIndex)
		chb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ OnAllCheckedChanged(s, e, {0}); }}", container.VisibleIndex)
	End Sub

	Protected Sub chb_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim chb As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
		Dim container As GridViewDataItemTemplateContainer = TryCast(chb.NamingContainer, GridViewDataItemTemplateContainer)

		chb.ClientInstanceName = String.Format("{0}{1}", chb.ID, container.VisibleIndex)
		chb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ OnCheckedChanged(s, e, {0}); }}", container.VisibleIndex)
	End Sub
End Class