import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import $ from 'jquery';
import fontawesome from '@fortawesome/fontawesome';
import { library } from '@fortawesome/fontawesome-svg-core';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAngleRight, faAngleLeft } from '@fortawesome/free-solid-svg-icons';
import ProductList from './components/ProductList.jsx';

fontawesome.library.add(faAngleRight, faAngleLeft);

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      products: [],
    };
    this.getNextProducts = this.getNextProducts.bind(this);
    this.getPreviousProducts = this.getPreviousProducts.bind(this);
    (this.index = 0), (this.size = 6), (this.data = []);
  }

  componentDidMount() {
    this.getProducts();
  }

  getProducts() {
    const self = this;
    axios
      .get('/products')
      .then((response) => {
        self.data = response.data;
        const products = response.data.slice(self.index, self.index + self.size);
        self.setState({ products });
      })
      .catch((error) => {
        console.error(error);
      });
  }

  getNextProducts() {
    if (this.index + this.size > this.data.length) {
      this.index = 0;
    } else {
      this.index += this.size;
      this.index = this.index % this.data.length;
    }
    const products = this.data.slice(this.index, this.index + this.size);
    this.setState({ products });
  }

  getPreviousProducts() {
    if (this.index - this.size >= 0) {
      this.index -= this.size;
    } else {
      this.index = this.data.length - (this.data.length % this.size);
    }
    const products = this.data.slice(this.index, this.index + this.size);
    this.setState({ products });
  }

  render() {
    return (
      <div>
        <div className="top">
          <div className="title">
Customers who viewed this item also viewed
          </div>
          <div className="page">
            Page
            {' '}
            {Math.ceil(this.index / this.size) + 1}
            {' '}
of
            {' '}
            {Math.floor(this.data.length / this.size) + 1}
          </div>
        </div>
        <div className="main">
          <button id="button" onClick={this.getPreviousProducts}>
            <FontAwesomeIcon icon="angle-left" size="2x" />
          </button>
          <ProductList products={this.state.products} />
          <button id="button" onClick={this.getNextProducts}>
            <FontAwesomeIcon icon="angle-right" size="2x" />
          </button>
        </div>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
