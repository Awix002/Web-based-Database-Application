<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course_Instructor.aspx.cs" Inherits="Abiral_CW.Course_Instructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Curse Instructor</title>
    <link rel="stylesheet" type="text/css" href="Student_Enrolment.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Course Instructor</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-form-div">
                    <div class="form-div">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CINSTRUCTOR_ID" DataSourceID="SqlDataSource1" CssClass="form-view">
                        <EditItemTemplate>
                            CINSTRUCTOR_ID:
                            <asp:Label ID="CINSTRUCTOR_IDLabel1" runat="server" Text='<%# Eval("CINSTRUCTOR_ID") %>' />
                            <br />
                            CINSTRUCTOR_NAME:
                            <asp:TextBox ID="CINSTRUCTOR_NAMETextBox" runat="server" Text='<%# Bind("CINSTRUCTOR_NAME") %>' />
                            <br />
                            PHONE_NUMBER:
                            <asp:TextBox ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
                            <br />
                            ADDRESS:
                            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                            <br />
                            QUALIFICATION:
                            <asp:TextBox ID="QUALIFICATIONTextBox" runat="server" Text='<%# Bind("QUALIFICATION") %>' />
                            <br />
                            COURSE_ID:
                            <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            CINSTRUCTOR_ID:
                            <asp:TextBox ID="CINSTRUCTOR_IDTextBox" runat="server" Text='<%# Bind("CINSTRUCTOR_ID") %>' />
                            <br />
                            CINSTRUCTOR_NAME:
                            <asp:TextBox ID="CINSTRUCTOR_NAMETextBox" runat="server" Text='<%# Bind("CINSTRUCTOR_NAME") %>' />
                            <br />
                            PHONE_NUMBER:
                            <asp:TextBox ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
                            <br />
                            ADDRESS:
                            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                            <br />
                            QUALIFICATION:
                            <asp:TextBox ID="QUALIFICATIONTextBox" runat="server" Text='<%# Bind("QUALIFICATION") %>' />
                            <br />
                            COURSE_ID:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>' CssClass="dropdown-Instructor"  >
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add New Instructor" CssClass="clickbutton" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="cancelbutton"/>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add Instructor" CssClass="addbutton" />
                        </ItemTemplate>
                    </asp:FormView>
                    </div>
                </div>
                <div class="main-grid-div">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CINSTRUCTOR_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            
                            <asp:BoundField DataField="CINSTRUCTOR_ID" HeaderText="CINSTRUCTOR_ID" ReadOnly="True" SortExpression="CINSTRUCTOR_ID" />
                            <asp:BoundField DataField="CINSTRUCTOR_NAME" HeaderText="CINSTRUCTOR_NAME" SortExpression="CINSTRUCTOR_NAME" />
                            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                            <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" CssClass="delete-button" OnClientClick="return confirm('Are you sure you want to delete?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE_INSTRUCTOR&quot; WHERE &quot;CINSTRUCTOR_ID&quot; = :CINSTRUCTOR_ID" InsertCommand="INSERT INTO &quot;COURSE_INSTRUCTOR&quot; (&quot;CINSTRUCTOR_ID&quot;, &quot;CINSTRUCTOR_NAME&quot;, &quot;PHONE_NUMBER&quot;, &quot;ADDRESS&quot;, &quot;QUALIFICATION&quot;, &quot;COURSE_ID&quot;) VALUES (:CINSTRUCTOR_ID, :CINSTRUCTOR_NAME, :PHONE_NUMBER, :ADDRESS, :QUALIFICATION, :COURSE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CINSTRUCTOR_ID&quot;, &quot;CINSTRUCTOR_NAME&quot;, &quot;PHONE_NUMBER&quot;, &quot;ADDRESS&quot;, &quot;QUALIFICATION&quot;, &quot;COURSE_ID&quot; FROM &quot;COURSE_INSTRUCTOR&quot;" UpdateCommand="UPDATE &quot;COURSE_INSTRUCTOR&quot; SET &quot;CINSTRUCTOR_NAME&quot; = :CINSTRUCTOR_NAME, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER, &quot;ADDRESS&quot; = :ADDRESS, &quot;QUALIFICATION&quot; = :QUALIFICATION, &quot;COURSE_ID&quot; = :COURSE_ID WHERE &quot;CINSTRUCTOR_ID&quot; = :CINSTRUCTOR_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="CINSTRUCTOR_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CINSTRUCTOR_ID" Type="String" />
                            <asp:Parameter Name="CINSTRUCTOR_NAME" Type="String" />
                            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
                            <asp:Parameter Name="ADDRESS" Type="String" />
                            <asp:Parameter Name="QUALIFICATION" Type="String" />
                            <asp:Parameter Name="COURSE_ID" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CINSTRUCTOR_NAME" Type="String" />
                            <asp:Parameter Name="PHONE_NUMBER" Type="String" />
                            <asp:Parameter Name="ADDRESS" Type="String" />
                            <asp:Parameter Name="QUALIFICATION" Type="String" />
                            <asp:Parameter Name="COURSE_ID" Type="String" />
                            <asp:Parameter Name="CINSTRUCTOR_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>                
            </form>
        </div>
        <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
