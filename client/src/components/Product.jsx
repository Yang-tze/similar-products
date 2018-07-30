import React from 'react';
import '../style.css';

function Product(props) {
  const product = props.product;

  return (
    <div className="product">
      <img
        className="productImage"
        src={`https://s3-us-west-1.amazonaws.com/hanjoonk/${product.url}`}
      />
      {' '}
      <br />
      {product.name}
      <div className="reviews">
        {product.rating ? (
          <img
            src={`https://s3-us-west-1.amazonaws.com/hanjoonk/${Math.round(
              (product.rating * 2) / 2,
            )}stars.png`}
          />
        ) : (
          ''
        )}
        {' '}
        {product.reviews}
      </div>
      <div className="price">
        $
        {product.price.toFixed(2)}
        {' '}
        {product.isPrime ? (
          <img className="prime" src="https://s3-us-west-1.amazonaws.com/hanjoonk/Prime.png" />
        ) : (
          ''
        )}
      </div>
    </div>
  );
}

export default Product;
