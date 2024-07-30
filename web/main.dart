import 'dart:html';

void main() {
  // Select the elements
  InputElement nameInput = querySelector('#nameInput') as InputElement;
  ButtonElement greetButton = querySelector('#greetButton') as ButtonElement;
  ButtonElement portfolioButton = querySelector('#portfolioButton') as ButtonElement;
  ParagraphElement output = querySelector('#output') as ParagraphElement;

  // Add event listener to the greet button
  greetButton.onClick.listen((event) {
    // Get the value from the input field
    String name = nameInput.value?.trim() ?? '';
    // Set the output text
    if (name.isNotEmpty) {
      output.text = 'Hi $name, let\'s check my portfolio!';
      // Show the portfolio button
      portfolioButton.style.display = 'inline-block';
    } else {
      output.text = 'Please enter your name.';
      // Hide the portfolio button if name is empty
      portfolioButton.style.display = 'none';
    }
  });

  // Add event listener to the portfolio button
  portfolioButton.onClick.listen((event) {
    // Redirect to the portfolio page
    window.location.href = 'portfolio.html';
  });
}
