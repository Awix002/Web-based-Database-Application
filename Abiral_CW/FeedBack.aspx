<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Abiral_CW.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FEEDBACK_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FEEDBACK_ID" HeaderText="FEEDBACK_ID" ReadOnly="True" SortExpression="FEEDBACK_ID" />
                    <asp:BoundField DataField="CINSTRUCTOR_ID" HeaderText="CINSTRUCTOR_ID" SortExpression="CINSTRUCTOR_ID" />
                    <asp:BoundField DataField="QNA_ID" HeaderText="QNA_ID" SortExpression="QNA_ID" />
                    <asp:BoundField DataField="FEEDBACK_ANSWER" HeaderText="FEEDBACK_ANSWER" SortExpression="FEEDBACK_ANSWER" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;FEEDBACK&quot; WHERE &quot;FEEDBACK_ID&quot; = :FEEDBACK_ID" InsertCommand="INSERT INTO &quot;FEEDBACK&quot; (&quot;FEEDBACK_ID&quot;, &quot;CINSTRUCTOR_ID&quot;, &quot;QNA_ID&quot;, &quot;FEEDBACK_ANSWER&quot;) VALUES (:FEEDBACK_ID, :CINSTRUCTOR_ID, :QNA_ID, :FEEDBACK_ANSWER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;FEEDBACK_ID&quot;, &quot;CINSTRUCTOR_ID&quot;, &quot;QNA_ID&quot;, &quot;FEEDBACK_ANSWER&quot; FROM &quot;FEEDBACK&quot;" UpdateCommand="UPDATE &quot;FEEDBACK&quot; SET &quot;CINSTRUCTOR_ID&quot; = :CINSTRUCTOR_ID, &quot;QNA_ID&quot; = :QNA_ID, &quot;FEEDBACK_ANSWER&quot; = :FEEDBACK_ANSWER WHERE &quot;FEEDBACK_ID&quot; = :FEEDBACK_ID">
                <DeleteParameters>
                    <asp:Parameter Name="FEEDBACK_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FEEDBACK_ID" Type="String" />
                    <asp:Parameter Name="CINSTRUCTOR_ID" Type="String" />
                    <asp:Parameter Name="QNA_ID" Type="String" />
                    <asp:Parameter Name="FEEDBACK_ANSWER" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CINSTRUCTOR_ID" Type="String" />
                    <asp:Parameter Name="QNA_ID" Type="String" />
                    <asp:Parameter Name="FEEDBACK_ANSWER" Type="String" />
                    <asp:Parameter Name="FEEDBACK_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="FEEDBACK_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    FEEDBACK_ID:
                    <asp:Label ID="FEEDBACK_IDLabel1" runat="server" Text='<%# Eval("FEEDBACK_ID") %>' />
                    <br />
                    CINSTRUCTOR_ID:
                    <asp:TextBox ID="CINSTRUCTOR_IDTextBox" runat="server" Text='<%# Bind("CINSTRUCTOR_ID") %>' />
                    <br />
                    QNA_ID:
                    <asp:TextBox ID="QNA_IDTextBox" runat="server" Text='<%# Bind("QNA_ID") %>' />
                    <br />
                    FEEDBACK_ANSWER:
                    <asp:TextBox ID="FEEDBACK_ANSWERTextBox" runat="server" Text='<%# Bind("FEEDBACK_ANSWER") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    FEEDBACK_ID:
                    <asp:TextBox ID="FEEDBACK_IDTextBox" runat="server" Text='<%# Bind("FEEDBACK_ID") %>' />
                    <br />
                    CINSTRUCTOR_ID:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CINSTRUCTOR_NAME" DataValueField="CINSTRUCTOR_ID" SelectedValue='<%# Bind("CINSTRUCTOR_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CINSTRUCTOR_ID&quot;, &quot;CINSTRUCTOR_NAME&quot; FROM &quot;COURSE_INSTRUCTOR&quot;"></asp:SqlDataSource>
                    <br />
                    QNA_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="QNA_QUESTION" DataValueField="QNA_ID" SelectedValue='<%# Bind("QNA_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;QNA_ID&quot;, &quot;QNA_QUESTION&quot; FROM &quot;QNA&quot;"></asp:SqlDataSource>
                    <br />
                    FEEDBACK_ANSWER:
                    <asp:TextBox ID="FEEDBACK_ANSWERTextBox" runat="server" Text='<%# Bind("FEEDBACK_ANSWER") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    FEEDBACK_ID:
                    <asp:Label ID="FEEDBACK_IDLabel" runat="server" Text='<%# Eval("FEEDBACK_ID") %>' />
                    <br />
                    CINSTRUCTOR_ID:
                    <asp:Label ID="CINSTRUCTOR_IDLabel" runat="server" Text='<%# Bind("CINSTRUCTOR_ID") %>' />
                    <br />
                    QNA_ID:
                    <asp:Label ID="QNA_IDLabel" runat="server" Text='<%# Bind("QNA_ID") %>' />
                    <br />
                    FEEDBACK_ANSWER:
                    <asp:Label ID="FEEDBACK_ANSWERLabel" runat="server" Text='<%# Bind("FEEDBACK_ANSWER") %>' />
                    <br />
                    
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
