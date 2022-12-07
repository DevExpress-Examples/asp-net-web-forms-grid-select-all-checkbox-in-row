using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void chbAll_Init(object sender, EventArgs e) {
        ASPxCheckBox chb = sender as ASPxCheckBox;
        GridViewDataItemTemplateContainer container = chb.NamingContainer as GridViewDataItemTemplateContainer;

        chb.ClientInstanceName = String.Format("chbAll{0}", container.VisibleIndex);
        chb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ OnAllCheckedChanged(s, e, {0}); }}", container.VisibleIndex);
    }

    protected void chb_Init(object sender, EventArgs e) {
        ASPxCheckBox chb = sender as ASPxCheckBox;
        GridViewDataItemTemplateContainer container = chb.NamingContainer as GridViewDataItemTemplateContainer;

        chb.ClientInstanceName = String.Format("{0}{1}", chb.ID, container.VisibleIndex);
        chb.ClientSideEvents.CheckedChanged = String.Format("function (s, e) {{ OnCheckedChanged(s, e, {0}); }}", container.VisibleIndex);
    }
}