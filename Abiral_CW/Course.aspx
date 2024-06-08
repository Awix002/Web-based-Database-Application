<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Abiral_CW.Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CW_Style.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Course Details</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-form-div">
                    <div class="form-div">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" CssClass="form-view">
                        <EditItemTemplate>
                            COURSE_ID:
                            <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                            <br />
                            COURSE_TITLE:
                            <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                            <br />
                            COURSE_CREDITS:
                            <asp:TextBox ID="COURSE_CREDITSTextBox" runat="server" Text='<%# Bind("COURSE_CREDITS") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            COURSE_ID:
                            <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                            <br />
                            COURSE_TITLE:
                            <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                            <br />
                            COURSE_CREDITS:
                            <asp:TextBox ID="COURSE_CREDITSTextBox" runat="server" Text='<%# Bind("COURSE_CREDITS") %>' />
                            <br />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Course" CssClass="clickbutton"/>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="cancelbutton" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Course" CssClass="addbutton"/>
                        </ItemTemplate>
                    </asp:FormView>
                    </div>                    
                </div>             
                <div class="main-grid-div">                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                        <Columns>                           
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                            <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                            <asp:BoundField DataField="COURSE_CREDITS" HeaderText="COURSE_CREDITS" SortExpression="COURSE_CREDITS" />
                            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" CssClass="delete-button" OnClientClick="return confirm('Are you sure you want to delete?');" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>                    
                </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot;, &quot;COURSE_CREDITS&quot;) VALUES (:COURSE_ID, :COURSE_TITLE, :COURSE_CREDITS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot;, &quot;COURSE_CREDITS&quot; FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSE_TITLE&quot; = :COURSE_TITLE, &quot;COURSE_CREDITS&quot; = :COURSE_CREDITS WHERE &quot;COURSE_ID&quot; = :COURSE_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="COURSE_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="COURSE_ID" Type="String" />
                            <asp:Parameter Name="COURSE_TITLE" Type="String" />
                            <asp:Parameter Name="COURSE_CREDITS" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="COURSE_TITLE" Type="String" />
                            <asp:Parameter Name="COURSE_CREDITS" Type="String" />
                            <asp:Parameter Name="COURSE_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>     
            </form>
        </div>
    <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
