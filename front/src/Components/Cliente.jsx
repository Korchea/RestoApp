import React, { useEffect, useState } from "react";
import Header from "./Header";
import Footer from "./Footer";
import Info from "./Info";
import Carta from "./Carta";
import axios from 'axios';

export default function Cliente() {
  return (
    <div>
      <Header />
      <Info />
      <Carta />
      <Footer />
    </div>
  )
}