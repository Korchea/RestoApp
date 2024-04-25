import React from 'react';
import ReactDOM from 'react-dom';
import './App.css';
import { BrowserRouter, Route, Routes } from "react-router-dom";
import MainPage from './Components/MainPage';
import './CSS/MainPage.css';
import './CSS/SecondPage.css';
import PersonalLogin from './Components/PersonalLogin';
import ClienteLogin from './Components/ClienteLogin';
import Carta from './Components/Carta';
import Ingredientes from './Components/Ingredientes';


function App() {

  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<MainPage />} />
          <Route path='/cliente' element={<ClienteLogin />} />
          <Route path='/personal' element={<PersonalLogin />} />
          <Route path='/carta' element={<Carta />} />
          <Route path='/ingredientes' element={<Ingredientes />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

ReactDOM.render(<App />, document.getElementById('root'));

export default App;