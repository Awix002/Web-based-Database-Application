<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lesson.aspx.cs" Inherits="Abiral_CW.Lesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CW_Style.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Lesson Details</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-form-div">
                    <div class="form-div">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="LESSON_ID" DataSourceID="SqlDataSource1" CssClass="form-view">
                        <EditItemTemplate>
                            LESSON_ID:
                            <asp:Label ID="LESSON_IDLabel1" runat="server" Text='<%# Eval("LESSON_ID") %>' />
                            <br />
                            LESSON_NO:
                            <asp:TextBox ID="LESSON_NOTextBox" runat="server" Text='<%# Bind("LESSON_NO") %>' />
                            <br />
                            LESSON_TITLE:
                            <asp:TextBox ID="LESSON_TITLETextBox" runat="server" Text='<%# Bind("LESSON_TITLE") %>' />
                            <br />
                            CONTENT_TYPE:
                            <asp:TextBox ID="CONTENT_TYPETextBox" runat="server" Text='<%# Bind("CONTENT_TYPE") %>' />
                            <br />
                            COURSE_ID:
                            <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            LESSON_ID:
                            <asp:TextBox ID="LESSON_IDTextBox" runat="server" Text='<%# Bind("LESSON_ID") %>' />
                            <br />
                            LESSON_NO:
                            <asp:TextBox ID="LESSON_NOTextBox" runat="server" Text='<%# Bind("LESSON_NO") %>' />
                            <br />
                            LESSON_TITLE:
                            <asp:TextBox ID="LESSON_TITLETextBox" runat="server" Text='<%# Bind("LESSON_TITLE") %>' />
                            <br />
                            CONTENT_TYPE:
                            <asp:TextBox ID="CONTENT_TYPETextBox" runat="server" Text='<%# Bind("CONTENT_TYPE") %>' />
                            <br />
                            COURSE_ID:
                            <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                            <br />      
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Add lesson" Text="Insert" CssClass="clickbutton"/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="cancelbutton" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add lesson" CssClass="addbutton" />
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                </div>
                <div class="main-grid-div">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LESSON_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                    <Columns>                        
                        <asp:BoundField DataField="LESSON_ID" HeaderText="LESSON_ID" ReadOnly="True" SortExpression="LESSON_ID" />
                        <asp:BoundField DataField="LESSON_NO" HeaderText="LESSON_NO" SortExpression="LESSON_NO" />
                        <asp:BoundField DataField="LESSON_TITLE" HeaderText="LESSON_TITLE" SortExpression="LESSON_TITLE" />
                        <asp:BoundField DataField="CONTENT_TYPE" HeaderText="CONTENT_TYPE" SortExpression="CONTENT_TYPE" />
                        <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                    </Columns>
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;LESSON&quot; WHERE &quot;LESSON_ID&quot; = :LESSON_ID" InsertCommand="INSERT INTO &quot;LESSON&quot; (&quot;LESSON_ID&quot;, &quot;LESSON_NO&quot;, &quot;LESSON_TITLE&quot;, &quot;CONTENT_TYPE&quot;, &quot;COURSE_ID&quot;) VALUES (:LESSON_ID, :LESSON_NO, :LESSON_TITLE, :CONTENT_TYPE, :COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;LESSON_ID&quot;, &quot;LESSON_NO&quot;, &quot;LESSON_TITLE&quot;, &quot;CONTENT_TYPE&quot;, &quot;COURSE_ID&quot; FROM &quot;LESSON&quot;" UpdateCommand="UPDATE &quot;LESSON&quot; SET &quot;LESSON_NO&quot; = :LESSON_NO, &quot;LESSON_TITLE&quot; = :LESSON_TITLE, &quot;CONTENT_TYPE&quot; = :CONTENT_TYPE, &quot;COURSE_ID&quot; = :COURSE_ID WHERE &quot;LESSON_ID&quot; = :LESSON_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="LESSON_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LESSON_ID" Type="String" />
                        <asp:Parameter Name="LESSON_NO" Type="String" />
                        <asp:Parameter Name="LESSON_TITLE" Type="String" />
                        <asp:Parameter Name="CONTENT_TYPE" Type="String" />
                        <asp:Parameter Name="COURSE_ID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LESSON_NO" Type="String" />
                        <asp:Parameter Name="LESSON_TITLE" Type="String" />
                        <asp:Parameter Name="CONTENT_TYPE" Type="String" />
                        <asp:Parameter Name="COURSE_ID" Type="String" />
                        <asp:Parameter Name="LESSON_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </form>
        </div>
        <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
