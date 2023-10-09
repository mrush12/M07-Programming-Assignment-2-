<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Addition Quiz</title>
</head>
<body>
    <h1>Addition Quiz</h1>
    <form action="quizResult.jsp" method="post">
        <%@ page import="java.util.Random" %>
        <%@ page import="java.util.ArrayList" %>
        <%
            // Number of quiz questions
            int numQuestions = 8;

            // Generate random addition questions and store them in an ArrayList
            ArrayList<String> questions = new ArrayList<>();
            Random rand = new Random();
            for (int i = 0; i < numQuestions; i++) {
                int operand1 = rand.nextInt(10); // Random number between 0 and 9
                int operand2 = rand.nextInt(10); // Random number between 0 and 9
                int answer = operand1 + operand2;
                questions.add(operand1 + " + " + operand2 + " = ?");
                session.setAttribute("answer" + i, answer);
            }

            // Display the quiz questions
            for (int i = 0; i < numQuestions; i++) {
                out.println("<p>" + questions.get(i) + " <input type='text' name='userAnswer" + i + "'></p>");
            }
        %>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
