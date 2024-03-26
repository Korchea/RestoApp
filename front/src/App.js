import React from 'react';
import ReactDOM from 'react-dom';
import './App.css';
import { BrowserRouter, Route, Routes } from "react-router-dom";
import MainPage from './Components/MainPage';
import './CSS/MainPage.css';


function App() {

  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<MainPage />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));

export default App;