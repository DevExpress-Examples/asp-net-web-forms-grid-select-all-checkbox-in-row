<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to implement the "Select All" CheckBox editor in the ASPxGridView's row</title>
	<script type="text/javascript">
		function OnAllCheckedChanged(s, e, index) {
			for (var i = 1; i < 3; i++) {
				var chb = eval("chb" + i + index);
				chb.SetChecked(s.GetChecked());
			}
		}

		function OnCheckedChanged(s, e, index) {
			var all = eval("chbAll" + index);
			var isAllChecked = true;
			for (var i = 1; i < 3; i++) {
				var chb = eval("chb" + i + index);
				if (!chb.GetChecked())
					isAllChecked = false;
			}
			all.SetChecked(isAllChecked);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<dx:ASPxGridView ID="gv" runat="server" ClientInstanceName="gv" AutoGenerateColumns="False"
		DataSourceID="ads" KeyFieldName="CategoryID">
		<Columns>
			<dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
				<EditFormSettings Visible="False" />
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
			</dx:GridViewDataTextColumn>
			<dx:GridViewDataCheckColumn Caption="All">
				<DataItemTemplate>
					<dx:ASPxCheckBox ID="chbAll" runat="server" OnInit="chbAll_Init">
					</dx:ASPxCheckBox>
				</DataItemTemplate>
			</dx:GridViewDataCheckColumn>
			<dx:GridViewDataCheckColumn Caption="One">
				<DataItemTemplate>
					<dx:ASPxCheckBox ID="chb1" runat="server" OnInit="chb_Init">
					</dx:ASPxCheckBox>
				</DataItemTemplate>
			</dx:GridViewDataCheckColumn>
			<dx:GridViewDataCheckColumn Caption="Two">
				<DataItemTemplate>
					<dx:ASPxCheckBox ID="chb2" runat="server" OnInit="chb_Init">
					</dx:ASPxCheckBox>
				</DataItemTemplate>
			</dx:GridViewDataCheckColumn>
		</Columns>
	</dx:ASPxGridView>
	<asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
	</asp:AccessDataSource>
	</form>
</body>
</html>