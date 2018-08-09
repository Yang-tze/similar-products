// generate data as array of objects [{}, {}]
// data fields -> id, name, url, name, rating, reviews, price, isPrime
const fs = require('fs');

const AWS = 'https://s3-us-west-1.amazonaws.com/hamazon-product-images/';
const RANDOM_BOOLEAN = [true, false];
const DATA_SIZE = 10;
const COLS = ['id', 'name', 'url', 'rating', 'reviews', 'price', 'isPrime'];

const createDataItem = (index) => {
  const dataItem = {};
  dataItem.id = index;
  dataItem.name = `hamazon${index}`;
  dataItem.url = `${AWS}${Math.floor(Math.random() * 10)}.jpeg`;
  dataItem.rating = (Math.random() * 5).toFixed(1);
  dataItem.reviews = Math.floor(Math.random() * 500);
  dataItem.price = (Math.random() * 1000).toFixed(2);
  dataItem.isPrime = RANDOM_BOOLEAN[Math.floor(Math.random() * 2)];
  return dataItem;
};

const generateCSV = (size) => {
  const dataArr = [COLS.join(',')];
  for (let i = 1; i <= size; i++) {
    dataArr.push(Object.values(createDataItem(i)));
  }
  const data = dataArr.join('\n');
  fs.writeFile('./randomData.csv', data, (err) => {
    if (err) {
      console.log('error in writing the csv: ', err);
    } else {
      console.log('success at getcsv');
    }
  });
};

generateCSV(DATA_SIZE);
