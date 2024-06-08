<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Abiral_CW.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student</title>
    <link rel="stylesheet" type="text/css" href="CW_Style.css" />
</head>
<body>
<div class="student-container">
    <br />
    <h1>Student Details</h1>
    <div class="main-div">
        <form id="form1" runat="server">
            <div class="main-form-div">
                <div class="form-div">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" CssClass="form-view">
                    <EditItemTemplate>
                        STUDENT_ID:
                        <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                        <br />
                        STUDENT_NAME:
                        <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                        <br />
                        CONTACT:
                        <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                        <br />
                        DATE_OF_BIRTH:
                        <asp:TextBox ID="DATE_OF_BIRTHTextBox" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                        <br />
                        EMAIL_ADDRESS:
                        <asp:TextBox ID="EMAIL_ADDRESSTextBox" runat="server" Text='<%# Bind("EMAIL_ADDRESS") %>' />
                        <br />
                        COUNTRY:
                        <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        STUDENT_ID:
                        <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                        <br />
                        STUDENT_NAME:
                        <asp:TextBox ID="STUDENT_NAMETextBox0" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                        <br />
                        CONTACT:
                        <asp:TextBox ID="CONTACTTextBox0" runat="server" Text='<%# Bind("CONTACT") %>' />
                        <br />
                        DATE_OF_BIRTH:
                        <asp:TextBox ID="DATE_OF_BIRTHTextBox0" runat="server" Text='<%# Bind("DATE_OF_BIRTH") %>' />
                        <br />
                        EMAIL_ADDRESS:
                        <asp:TextBox ID="EMAIL_ADDRESSTextBox0" runat="server" Text='<%# Bind("EMAIL_ADDRESS") %>' />
                        <br />
                        COUNTRY:
                        <asp:TextBox ID="COUNTRYTextBox0" runat="server" Text='<%# Bind("COUNTRY") %>' />
                        <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add New Student" CssClass="clickbutton"/>
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="cancelbutton"/>
                    </InsertItemTemplate>
                    <ItemTemplate>                          
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Student" CssClass="addbutton"/>                    
                    </ItemTemplate>                
                </asp:FormView>
                </div>
            </div>
            
            <div class="main-grid-div">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                    <Columns>                      
                        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                        <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                        <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                        <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                        <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="edit-button"/>
                        <asp:TemplateField >
                            <ItemTemplate>
                                <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" CssClass="delete-button" OnClientClick="return confirm('Are you sure you want to delete?');" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>                
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;COUNTRY&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :CONTACT, :DATE_OF_BIRTH, :EMAIL_ADDRESS, :COUNTRY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;DATE_OF_BIRTH&quot;, &quot;EMAIL_ADDRESS&quot;, &quot;COUNTRY&quot; FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;DATE_OF_BIRTH&quot; = :DATE_OF_BIRTH, &quot;EMAIL_ADDRESS&quot; = :EMAIL_ADDRESS, &quot;COUNTRY&quot; = :COUNTRY WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                    <asp:Parameter Name="EMAIL_ADDRESS" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="String" />
                    <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
                    <asp:Parameter Name="EMAIL_ADDRESS" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
    <% Server.Transfer("Sidebar.aspx", true); %>
</div>
</body>
</html>
