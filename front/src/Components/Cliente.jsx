import React, { useEffect, useState } from "react";
import Header from "./Header";
import Footer from "./Footer";
import Info from "./Info";
import Carta from "./Carta";
import axios from 'axios';
import { Link } from "react-router-dom";

export default function Cliente() {
  return (
    <div>
      <Header />
      <Info />
      <Link to="/carta">
        <h1>Carta</h1>
      </Link>
      <Footer />
    </div>
  )
}