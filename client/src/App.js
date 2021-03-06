import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
const BASE_URL = process.env.REACT_APP_BASE_URL;

class App extends Component {
  constructor(props) {
    super();
    this.state = {
      scripts: []
    };
  }

  componentDidMount() {
    //the url passed in the fetch below WON'T be hard coded
    //We need to make an environmental variable in .env file
    //that gets picked up in locally.
    fetch(`${BASE_URL}/scripts`)
      .then(resp => resp.json())
      .then(data => this.setState({
        scripts: data.scripts
      }));
  }

  render() {
    return (
      <div className="App">
        <h1>React Home</h1>
        <div>{JSON.stringify(this.state.scripts)}</div>
        <div>{BASE_URL}</div>
      </div>
    );
  }
}

export default App;
