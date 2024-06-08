<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QNA.aspx.cs" Inherits="Abiral_CW.QNA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QNA_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="QNA_ID" HeaderText="QNA_ID" ReadOnly="True" SortExpression="QNA_ID" />
                    <asp:BoundField DataField="QNA_QUESTION" HeaderText="QNA_QUESTION" SortExpression="QNA_QUESTION" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;QNA&quot; WHERE &quot;QNA_ID&quot; = :QNA_ID" InsertCommand="INSERT INTO &quot;QNA&quot; (&quot;QNA_ID&quot;, &quot;QNA_QUESTION&quot;, &quot;STUDENT_ID&quot;, &quot;COURSE_ID&quot;) VALUES (:QNA_ID, :QNA_QUESTION, :STUDENT_ID, :COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;QNA_ID&quot;, &quot;QNA_QUESTION&quot;, &quot;STUDENT_ID&quot;, &quot;COURSE_ID&quot; FROM &quot;QNA&quot;" UpdateCommand="UPDATE &quot;QNA&quot; SET &quot;QNA_QUESTION&quot; = :QNA_QUESTION, &quot;STUDENT_ID&quot; = :STUDENT_ID, &quot;COURSE_ID&quot; = :COURSE_ID WHERE &quot;QNA_ID&quot; = :QNA_ID">
                <DeleteParameters>
                    <asp:Parameter Name="QNA_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="QNA_ID" Type="String" />
                    <asp:Parameter Name="QNA_QUESTION" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="QNA_QUESTION" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="QNA_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="QNA_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    QNA_ID:
                    <asp:Label ID="QNA_IDLabel1" runat="server" Text='<%# Eval("QNA_ID") %>' />
                    <br />
                    QNA_QUESTION:
                    <asp:TextBox ID="QNA_QUESTIONTextBox" runat="server" Text='<%# Bind("QNA_QUESTION") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    COURSE_ID:
                    <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    QNA_ID:
                    <asp:TextBox ID="QNA_IDTextBox" runat="server" Text='<%# Bind("QNA_ID") %>' />
                    <br />
                    QNA_QUESTION:
                    <asp:TextBox ID="QNA_QUESTIONTextBox" runat="server" Text='<%# Bind("QNA_QUESTION") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource001" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource001" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
                    <br />
                    COURSE_ID:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource002" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource002" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    QNA_ID:
                    <asp:Label ID="QNA_IDLabel" runat="server" Text='<%# Eval("QNA_ID") %>' />
                    <br />
                    QNA_QUESTION:
                    <asp:Label ID="QNA_QUESTIONLabel" runat="server" Text='<%# Bind("QNA_QUESTION") %>' />
                    <br />
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
