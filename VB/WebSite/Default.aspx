<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript">
		function OnCBLSelectedIndexChanged(s, e) {
			s.UnselectAll();
			if (e.isSelected)
				s.SetSelectedIndex(e.index);
			else
				s.UnselectIndices(e.index);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		DevEx theme:
		<br />
		<dx:ASPxCheckBoxList ID="ASPxCheckBoxList1" runat="server" ValueType="System.String" Theme="DevEx">
			<ClientSideEvents SelectedIndexChanged="OnCBLSelectedIndexChanged" />
			<CheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonChecked_DevEx"></CheckedImage>
			<UncheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonUnchecked_DevEx"></UncheckedImage>
			<Items>
				<dx:ListEditItem Text="Item 0" />
				<dx:ListEditItem Text="Item 1" />
				<dx:ListEditItem Text="Item 2" />
			</Items>
		</dx:ASPxCheckBoxList>
		<br />
		Metropolis theme:
		<br />
		<dx:ASPxCheckBoxList ID="ASPxCheckBoxList2" runat="server" ValueType="System.String" Theme="Metropolis">
			<ClientSideEvents SelectedIndexChanged="OnCBLSelectedIndexChanged" />
			<CheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonChecked_Metropolis"></CheckedImage>
			<UncheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonUnchecked_Metropolis"></UncheckedImage>
			<Items>
				<dx:ListEditItem Text="Item 0" />
				<dx:ListEditItem Text="Item 1" />
				<dx:ListEditItem Text="Item 2" />
			</Items>
		</dx:ASPxCheckBoxList>
	</form>
</body>
</html>