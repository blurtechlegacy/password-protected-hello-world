const password = '1111';

const checkPassword = (inputPassword: string | null): boolean =>
  password === inputPassword;

if (checkPassword(prompt('Enter password'))) {
  alert('Hello world');
} else {
  alert('incorrect password');
}
