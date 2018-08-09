// generate data as array of objects [{}, {}]
// data fields -> id, name, url, name, rating, reviews, price, isPrime
const AWS = 'https://s3-us-west-1.amazonaws.com/hamazon-product-images/';
const RANDOM_BOOLEAN = [true, false];
const DATA_SIZE = 10;

const generateData = (size) => {
  const data = [];
  for (let i = 1; i <= size; i++) {
    const dataItem = {};
    dataItem.id = i;
    dataItem.name = `hamazon${i}`;
    dataItem.url = `${AWS}${Math.floor(Math.random() * 10)}.jpeg`;
    dataItem.rating = (Math.random() * 5).toFixed(1);
    dataItem.reviews = Math.floor(Math.random() * 500);
    dataItem.price = (Math.random() * 1000).toFixed(2);
    dataItem.isPrime = RANDOM_BOOLEAN[Math.floor(Math.random() * 2)];
    data.push(dataItem);
  }
  console.log(data);
  return data;
};

generateData(DATA_SIZE);
