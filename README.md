Teamplate project for publishing react component to npm.

Contains local demo app.

# Start component development
1. Start webpack dev server for demo project `npm run bemo`.
2. Start component build with `npm run start`.
3. Develop your component.

# Publish react component to npm
1. Update package.json with your component data: `name, description, repository, bugs, homepage, author`
2. Run `npm publish`

# Component theming approach
Implement theming using
[styled-components](https://www.styled-components.com/).
A component declares in its prop types a list of wrappers that it uses to
build a component's JSX sturcture:
```
const C1 = ({theme}) => (
  <theme.Wrapper>
    Test component:
    <theme.AnotherWrapper>
      Some data here.
    </theme.AtotherWrapper>
  </theme.wrapper>
);
C1.propTypes = {
  theme: PropTypes.shape({
    Wrapper: PropTypes.object,
    AnotherWrapper: PropTypes.object,
  }),
}
```
Component can be easily used without specifying theme since it defines defaults:
```
C1.defaultProps = {
  theme: PropTypes.shape({
    Wrapper: styled.div`
      display: flex;
      justify-content: center;
    `,
    AnotherWrapper: styled.strong`
      color: red;
    `,
  }),
}
```
This way user can define many different styles separately from component's
repo and switch them easily simply providing a theme consisting of styled
components (since styled-components are React components themselves).

# Some useful articles to refer in case of troubles:
* [How to package your React Component for distribution via NPM](https://itnext.io/how-to-package-your-react-component-for-distribution-via-npm-d32d4bf71b4f)
* [A guide to building a React component with webpack 4, publishing to npm, and deploying the demo to GitHub Pages](https://medium.com/dailyjs/building-a-react-component-with-webpack-publish-to-npm-deploy-to-github-guide-6927f60b3220)
