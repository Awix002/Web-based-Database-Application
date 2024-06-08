<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enrol_Student.aspx.cs" Inherits="Abiral_CW.Enrol_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,COURSE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="ENROL_DATE" HeaderText="ENROL_DATE" SortExpression="ENROL_DATE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ENROL_STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;ENROL_STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;COURSE_ID&quot;, &quot;ENROL_DATE&quot;) VALUES (:STUDENT_ID, :COURSE_ID, :ENROL_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;COURSE_ID&quot;, &quot;ENROL_DATE&quot; FROM &quot;ENROL_STUDENT&quot;" UpdateCommand="UPDATE &quot;ENROL_STUDENT&quot; SET &quot;ENROL_DATE&quot; = :ENROL_DATE WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;COURSE_ID&quot; = :COURSE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="ENROL_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENROL_DATE" Type="DateTime" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,COURSE_ID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                    <br />
                    ENROL_DATE:
                    <asp:TextBox ID="ENROL_DATETextBox" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
                    <br />
                    COURSE_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    <br />
                    ENROL_DATE:
                    <asp:TextBox ID="ENROL_DATETextBox" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                    <br />
                    ENROL_DATE:
                    <asp:Label ID="ENROL_DATELabel" runat="server" Text='<%# Bind("ENROL_DATE") %>' />
                    <br />
                    
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
