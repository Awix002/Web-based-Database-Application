<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course_CI.aspx.cs" Inherits="Abiral_CW.Course_CI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Instructor</title>
    <link rel="stylesheet" type="text/css" href="Student_Enrolment.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Course and Course Instructor</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-grid-div"> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select c.course_id, c.course_title, c.Course_credits, cs.CInstructor_id, cs.CInstructor_Name, cs.phone_number, cs.address, cs.qualification
        from course c
        Join Course_Instructor cs
        On c.course_id = cs.course_id
Where c.course_id = :course">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID" CssClass="dropdown-Course">
                    </asp:DropDownList>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,CINSTRUCTOR_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                            <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                            <asp:BoundField DataField="COURSE_CREDITS" HeaderText="COURSE_CREDITS" SortExpression="COURSE_CREDITS" />
                            <asp:BoundField DataField="CINSTRUCTOR_ID" HeaderText="CINSTRUCTOR_ID" ReadOnly="True" SortExpression="CINSTRUCTOR_ID" />
                            <asp:BoundField DataField="CINSTRUCTOR_NAME" HeaderText="CINSTRUCTOR_NAME" SortExpression="CINSTRUCTOR_NAME" />
                            <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                            <asp:BoundField DataField="QUALIFICATION" HeaderText="QUALIFICATION" SortExpression="QUALIFICATION" />
                        </Columns>
                    </asp:GridView>
                </div>
            </form>
        </div>
        <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
