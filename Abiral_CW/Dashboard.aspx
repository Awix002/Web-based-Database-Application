<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Abiral_CW.Dashboard" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Dashboard.css" />
</head>
<body>
    <div class = "student-container">
        <br />
        <h1>Dashboard</h1>
        <div class="chart-container" >
            <form id="form1" runat="server">
                                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Text="Enrolment of Students per Course" Font="Arial, 14pt" ForeColor="Black" />
                                            </Titles>
                            <series>
                                <asp:Series Name="Student" XValueMember="COURSE_TITLE" YValueMembers="ENROLLMENT_COUNT" ChartType="Area">
                                </asp:Series>
                            </series>
                            <chartAreas> 
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Courses" TitleForeColor="Black" TitleFont="Arial, 12pt" LabelStyle-Font="Arial, 12pt" Interval="1" IsLabelAutoFit="True" IsMarginVisible="False">
                                    <LabelStyle Font="Arial, 10pt"></LabelStyle>
                                    </AxisX>
                                    <AxisY Title="Number of Students" TitleForeColor="Black" TitleFont="Arial, 12pt">
                                    </AxisY>
                                </asp:ChartArea>
                            </chartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.course_id, c.course_title, COUNT(e.student_id) AS enrollment_count 
FROM course c LEFT 
JOIN Enrol_Student e 
ON c.course_id = e.course_id 
GROUP BY c.course_id, c.course_title 
ORDER BY enrollment_count"></asp:SqlDataSource>
                
                    
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="500px" Width="600px" style="text-align: right">
                            <Titles>
                                <asp:Title Text="Number of Instructor per Course" Font="Arial, 14pt" ForeColor="Black" />
                            </Titles>
                            <series>
                                <asp:Series Name="Instructors" XValueMember="COURSE_TITLE" YValueMembers="INSTRUCTOR_COUNT">
                                </asp:Series>
                            </series>
                            <chartAreas> 
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Title="Courses" TitleForeColor="Black" TitleFont="Arial, 12pt" LabelStyle-Font="Arial, 10pt" Interval="1" IsLabelAutoFit="True" IsMarginVisible="False">
                                <LabelStyle Font="Arial, 10pt"></LabelStyle>
                                </AxisX>
                                <AxisY Title="Number of Instructors" TitleForeColor="Black" TitleFont="Arial, 12pt">
                                </AxisY>
                            </asp:ChartArea>
                        </chartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
</Legends>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.course_id, c.course_title, COUNT(ci.cinstructor_id) AS instructor_count
FROM course c
LEFT JOIN course_instructor ci ON c.course_id = ci.course_id
GROUP BY c.course_id, c.course_title
ORDER BY c.course_id
"></asp:SqlDataSource>
                <br />
                <br />
                    
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Height="500px" Width="600px">
                            <Titles>
                                <asp:Title Text="Number of Questions Questioned per Course" Font="Arial, 14pt" ForeColor="Black" />
                            </Titles>
                            <series>
                                <asp:Series ChartType="StackedColumn" Name="Questions" XValueMember="COURSE_TITLE" YValueMembers="QUESTION_COUNT">
                                </asp:Series>
                            </series>
                                <chartAreas> 
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Course" TitleForeColor="Black" TitleFont="Arial, 12pt" LabelStyle-Font="Arial, 10pt" Interval="1" IsLabelAutoFit="True" IsMarginVisible="False">
                                    <LabelStyle Font="Arial, 10pt"></LabelStyle>
                                    </AxisX>
                                    <AxisY Title="Number of Questions" TitleForeColor="Black" TitleFont="Arial, 12pt">
                                    </AxisY>
                                </asp:ChartArea>
                            </chartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.course_id, c.course_title, COUNT(q.qna_id) AS question_count
FROM course c
LEFT JOIN qna q ON c.course_id = q.course_id
GROUP BY c.course_id, c.course_title
ORDER BY question_count 
"></asp:SqlDataSource>
                    

                        <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" Height="500px" Width="600px">
                            <Titles>
                                <asp:Title Text="Number of Students according to Country" Font="Arial, 14pt" ForeColor="Black" />
                            </Titles>
                            <series>
                                <asp:Series Name="Students" ChartType="SplineArea" XValueMember="COUNTRY" YValueMembers="QUESTION_COUNT">
                                </asp:Series>
                            </series>
                            <chartAreas> 
                            <asp:ChartArea Name="ChartArea1">
                                <AxisX Title="Countries" TitleForeColor="Black" TitleFont="Arial, 12pt" LabelStyle-Font="Arial, 10pt" Interval="1" IsLabelAutoFit="True" IsMarginVisible="False">
                                <LabelStyle Font="Arial, 10pt"></LabelStyle>
                                </AxisX>
                                <AxisY Title="Number of Students" TitleForeColor="Black" TitleFont="Arial, 12pt">
                                </AxisY>
                            </asp:ChartArea>
                        </chartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>                         
                            
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT s.country, COUNT(q.qna_id) AS question_count
FROM student s
LEFT JOIN qna q ON s.student_id = q.student_id
GROUP BY s.country
ORDER BY question_count 
"></asp:SqlDataSource>
                <br />
                <br />    
                

                    <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5" Height="700px" Width="600px">
                        <series>
                            <asp:Series Name="Students" XValueMember="ENROL_YEAR" YValueMembers="ENROLMENT_COUNT">
                            </asp:Series>
                        </series>
                            <chartAreas> 
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisX Title="Years" TitleForeColor="Black" TitleFont="Arial, 12pt" LabelStyle-Font="Arial, 10pt" Interval="1" IsLabelAutoFit="True" IsMarginVisible="False">
                                    <LabelStyle Font="Arial, 10pt"></LabelStyle>
                                    </AxisX>
                                    <AxisY Title="Number of Students" TitleForeColor="Black" TitleFont="Arial, 12pt">
                                    </AxisY>
                                </asp:ChartArea>
                            </chartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends> 
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT EXTRACT(YEAR FROM enrol_date) AS enrol_year, COUNT(student_id) AS enrolment_count
FROM enrol_student
GROUP BY EXTRACT(YEAR FROM enrol_date)
ORDER BY enrol_year
"></asp:SqlDataSource>               
                
            </form>
         </div>
    <% Server.Transfer("Sidebar.aspx", true); %>
    </div>
    
</body>
</html>
