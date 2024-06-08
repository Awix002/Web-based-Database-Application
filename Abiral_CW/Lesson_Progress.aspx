<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lesson_Progress.aspx.cs" Inherits="Abiral_CW.Lesson_Progress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CW_Style.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Lesson Progress</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-form-div">
                    <div class="form-div">
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,LESSON_ID" DataSourceID="SqlDataSource1" CssClass="form-view">
                            <EditItemTemplate>
                                STUDENT_ID:
                                <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                                <br />
                                LESSON_ID:
                                <asp:Label ID="LESSON_IDLabel1" runat="server" Text='<%# Eval("LESSON_ID") %>' />
                                <br />
                                LASTACCESSEDDATE:
                                <asp:TextBox ID="LASTACCESSEDDATETextBox" runat="server" Text='<%# Bind("LASTACCESSEDDATE") %>' />
                                <br />
                                LESSONSTATUS:
                                <asp:TextBox ID="LESSONSTATUSTextBox" runat="server" Text='<%# Bind("LESSONSTATUS") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                STUDENT_ID:
                                <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                                <br />
                                LESSON_ID:
                                <asp:TextBox ID="LESSON_IDTextBox" runat="server" Text='<%# Bind("LESSON_ID") %>' />
                                <br />
                                LASTACCESSEDDATE:
                                <asp:TextBox ID="LASTACCESSEDDATETextBox" runat="server" Text='<%# Bind("LASTACCESSEDDATE") %>' />
                                <br />
                                LESSONSTATUS:
                                <asp:TextBox ID="LESSONSTATUSTextBox" runat="server" Text='<%# Bind("LESSONSTATUS") %>' />
                                <br />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add New Progress" CssClass="clickbutton" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="cancelbutton" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Progress" CssClass="addbutton"/>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
                <div class="main-grid-div">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,LESSON_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                            <asp:BoundField DataField="LESSON_ID" HeaderText="LESSON_ID" ReadOnly="True" SortExpression="LESSON_ID" />
                            <asp:BoundField DataField="LASTACCESSEDDATE" HeaderText="LASTACCESSEDDATE" SortExpression="LASTACCESSEDDATE" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="LESSONSTATUS" HeaderText="LESSONSTATUS" SortExpression="LESSONSTATUS" />
                        </Columns>
                    </asp:GridView>
                </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;LESSON_PROGRESS&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;LESSON_ID&quot; = :LESSON_ID" InsertCommand="INSERT INTO &quot;LESSON_PROGRESS&quot; (&quot;STUDENT_ID&quot;, &quot;LESSON_ID&quot;, &quot;LASTACCESSEDDATE&quot;, &quot;LESSONSTATUS&quot;) VALUES (:STUDENT_ID, :LESSON_ID, :LASTACCESSEDDATE, :LESSONSTATUS)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;LESSON_ID&quot;, &quot;LASTACCESSEDDATE&quot;, &quot;LESSONSTATUS&quot; FROM &quot;LESSON_PROGRESS&quot;" UpdateCommand="UPDATE &quot;LESSON_PROGRESS&quot; SET &quot;LASTACCESSEDDATE&quot; = :LASTACCESSEDDATE, &quot;LESSONSTATUS&quot; = :LESSONSTATUS WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;LESSON_ID&quot; = :LESSON_ID">
                        <DeleteParameters>
                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                            <asp:Parameter Name="LESSON_ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                            <asp:Parameter Name="LESSON_ID" Type="String" />
                            <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
                            <asp:Parameter Name="LESSONSTATUS" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="LASTACCESSEDDATE" Type="DateTime" />
                            <asp:Parameter Name="LESSONSTATUS" Type="String" />
                            <asp:Parameter Name="STUDENT_ID" Type="String" />
                            <asp:Parameter Name="LESSON_ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>                
            </form>
        </div>
        <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
