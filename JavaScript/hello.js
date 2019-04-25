var password = '1111';

function checkPassword(inputPassword) {
  return password === inputPassword;
}

if (checkPassword(prompt('Enter password'))) {
  alert('Hello world');
} else {
  alert('incorrect password');
}