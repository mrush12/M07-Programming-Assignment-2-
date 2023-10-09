<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>
</head>
<body>
    <h1>Quiz Result</h1>
    <%
        int numQuestions = 8;
        int score = 0;

        for (int i = 0; i < numQuestions; i++) {
            int userAnswer = Integer.parseInt(request.getParameter("userAnswer" + i));
            int correctAnswer = (int) session.getAttribute("answer" + i);
            out.println("<p>Question " + (i + 1) + ": " + correctAnswer);

            if (userAnswer == correctAnswer) {
                out.println(" - Correct");
                score++;
            } else {
                out.println(" - Incorrect");
            }
        }

        // Display the final score
        out.println("<p>Your Score: " + score + " out of " + numQuestions + "</p>");
    %>
</body>
</html>
