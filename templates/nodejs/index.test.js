const  { printMe } = require('./index');

describe('PrintMe', () => {
  it('Prints a Hello World', () => {
    const helloWorld = printMe();
    expect(helloWorld).toBe('Hello World');
  });

});
