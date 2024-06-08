<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Best_Course.aspx.cs" Inherits="Abiral_CW.Best_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Best Course </title>
    <link rel="stylesheet" type="text/css" href="Student_Enrolment.css" />
</head>
<body>
    <div class="student-container">
        <br />
        <h1>Best E-Learning Course</h1>
        <div class="main-div">
            <form id="form1" runat="server">
                <div class="main-grid-div"> 
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT es.course_id, c.course_title, COUNT(es.student_id) as TotalStudentEnrolled
FROM enrol_student es
JOIN course c on es.course_id = c.course_id
WHERE rownum &lt;= 3
AND extract(month from es.enrol_date) = :month
AND extract(year from es.enrol_date) = :year
group by es.course_id, c.course_title
order by TotalStudentEnrolled">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="month" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="year" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="MONTHS" DataValueField="MONTHS" CssClass="dropdown-best-e">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT TO_CHAR(enrol_date, 'YYYY') AS years FROM Enrol_Student" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="YEARS" DataValueField="YEARS" CssClass="dropdown-best-e">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT EXTRACT(MONTH FROM Enrol_Date) AS months FROM Enrol_Student"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource4" CssClass="grid-view" AutoGenerateColumns="False" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                            <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                            <asp:BoundField DataField="TOTALSTUDENTENROLLED" HeaderText="TOTALSTUDENTENROLLED" SortExpression="TOTALSTUDENTENROLLED" />
                        </Columns>
                    </asp:GridView>
                </div>
            </form>         
        </div>
        <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
</body>
</html>
