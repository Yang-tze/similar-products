// generate data as array of objects [{}, {}]
// data fields -> id, name, url, name, rating, reviews, price, isPrime
const fs = require('fs');

const AWS = 'https://s3-us-west-1.amazonaws.com/hamazon-product-images/';
const RANDOM_BOOLEAN = [true, false];
const DATA_BASE = 1000000;
const TIMES = 10;
const COLS = ['id', 'name', 'url', 'rating', 'reviews', 'price', 'isPrime'];

const ltrs = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'];
const generateName = (index, length) => {
  let result = '';
  for (let i = 0; i < length; i++) {
    result += ltrs[index % 10];
    index = Math.floor(index / 10);
  }
  return result;
};

const createDataItem = (index) => {
  const dataItem = {};
  dataItem.id = index;
  dataItem.name = generateName(index - 1, 7);
  dataItem.url = `${AWS}${Math.floor(Math.random() * 10)}.jpeg`;
  dataItem.rating = (Math.random() * 5).toFixed(1);
  dataItem.reviews = Math.floor(Math.random() * 500);
  dataItem.price = (Math.random() * 1000).toFixed(2);
  dataItem.isPrime = RANDOM_BOOLEAN[Math.floor(Math.random() * 2)];
  return dataItem;
};

const generateData = (start, end) => {
  const dataArr = [];
  for (let i = start + 1; i <= end; i++) {
    dataArr.push(Object.values(createDataItem(i)));
  }
  return dataArr.join('\n');
};

const generateCSV = (base, times) => {
  for (let i = 0; i < times; i++) {
    const dataArr = [COLS.join(',')];
    dataArr.push(generateData(i * base, (i + 1) * base));
    const data = dataArr.join('\n');
    fs.writeFile(`./data/randomData${i + 1}.csv`, data, (err) => {
      if (err) {
        console.log('error in writing the csv: ', err);
      } else {
        console.log('success at getcsv');
      }
    });
  }
};

generateCSV(DATA_BASE, TIMES);
