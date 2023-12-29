<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxCheckBoxList - How to emulate ASPxRadioButtonList that allows users to unselect items


<p>Unfortunately, ASPxRadioButtonList does not allow handling the click event for a separate item. Thus, it is better to use ASPxCheckBoxList to allow users to unselect items. Handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientCheckBoxList_SelectedIndexChangedtopic"><u>SelectedIndexChanged</u></a> event to emulate the ASPxRadioButtonList behavior in the following way:</p><br />


```js
    function OnCBLSelectedIndexChanged(s, e) {
        s.UnselectAll();
        if (e.isSelected)
            s.SetSelectedIndex(e.index);
        else
            s.UnselectIndices(e.index);
    }

```

<p> </p><p>Then, customize the control's images using the <strong>SpriteProperties</strong> property and specifying the corresponding theme name in the prefix of a class:</p>

```aspx
<dx:ASPxCheckBoxList ... Theme="DevEx">
	...
	<CheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonChecked_DevEx"></CheckedImage>
	<UncheckedImage SpriteProperties-CssClass="dxEditors_edtRadioButtonUnchecked_DevEx"></UncheckedImage>
	<Items>
		...
	</Items>
</dx:ASPxCheckBoxList>
```

<p> </p><p><strong>See Also:</strong><strong><br />
</strong><a href="https://www.devexpress.com/Support/Center/p/E4893">CheckBoxList - How to emulate RadioButtonList that allows users to unselect items</a></p>

<br/>


