<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Enrolment.aspx.cs" Inherits="Abiral_CW.Student_Enrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Enrolment</title>
    <link rel="stylesheet" type="text/css" href="Student_Enrolment.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Student Enrolment</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-grid-div">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT s.student_id, s.student_name, s.contact, s.date_of_birth, s.email_address, s.country,
               e.enrol_date, e.course_id,
               c.course_title, c.course_credits
        FROM student s
        JOIN enrol_student e ON s.student_id = e.student_id
        JOIN course c ON e.course_id = c.course_id
Where s.student_id = :student">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="student" PropertyName="SelectedValue"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID"  CssClass="dropdown-center">
                    </asp:DropDownList>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" CssClass="grid-view" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                            <asp:BoundField DataField="DATE_OF_BIRTH" HeaderText="DATE_OF_BIRTH" SortExpression="DATE_OF_BIRTH" DataFormatString="{0:d}"  />
                            <asp:BoundField DataField="EMAIL_ADDRESS" HeaderText="EMAIL_ADDRESS" SortExpression="EMAIL_ADDRESS" />
                            <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                            <asp:BoundField DataField="ENROL_DATE" HeaderText="ENROL_DATE" SortExpression="ENROL_DATE" DataFormatString="{0:d}"  />
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                            <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                            <asp:BoundField DataField="COURSE_CREDITS" HeaderText="CREDITS" SortExpression="COURSE_CREDITS" />
                        </Columns>
                    </asp:GridView>
                </div>
            </form>
        </div>
    <% Server.Transfer("Sidebar.aspx", true); %>
</div>
</body>
</html>
