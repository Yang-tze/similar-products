const LIMIT = 18; // (1.800.000)
const DATA_BASE = 250000;
const NO_OF_CHUNKS = 40;
const fs = require('fs');

const COLS = ['id', 'similarID'];

// const generateRelation = (start, end, dataSize) => {
//   // for 10 M data
//   let result = 'id,similarID';
//   for (let j = start; j <= end; j += 1) {
//     for (let a = 0; a < LIMIT; a += 1) {
//       const newRow = `'\n'${j},${Math.floor(Math.random() * dataSize)}`;
//       result += newRow;
//     }
//     if (j % 100000 === 0) {
//       console.log(j);
//     }
//   }
//   return result;
// };

const generateRelation = (start, end, dataSize) => {
  // for 10 M data
  const dataArr = [];
  for (let j = start; j <= end; j += 1) {
    for (let a = 0; a < LIMIT; a += 1) {
      const newRow = [j, Math.floor(Math.random() * dataSize)];
      dataArr.push(newRow);
    }
    if (j % 100000 === 0) {
      console.log(j);
    }
  }
  return dataArr.join('\n');
};

const writeCSV = (noOfChunks, base) => {
  for (let i = 0; i < noOfChunks; i += 1) {
    const dataArr = [COLS.join(',')];
    dataArr.push(
      generateRelation(i * base + 1, (i + 1) * base, base * noOfChunks),
    );
    const data = dataArr.join('\n');
    // fs.writeFile(`./data/randomRelation${i + 1}.csv`, data, (err) => {
    fs.writeFile(`./randomRelation${i + 1}.csv`, data, (err) => {
      if (err) {
        console.log('error in writing the csv: ', err);
      } else {
        console.log('success at getcsv');
      }
    });
  }
};

const writeSQL = (noOfChunks) => {
  let command = '';
  for (let i = 1; i <= noOfChunks; i += 1) {
    command += `\nCOPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation${i}.csv' DELIMITER ',' CSV HEADER`;
    fs.writeFile('./dB/postgres/relationdata.sql', command, (err) => {
      if (err) {
        console.log('error in writing the csv: ', err);
      } else {
        console.log('success at getcsv');
      }
    });
  }
};

// writeSQL(NO_OF_CHUNKS);
writeCSV(NO_OF_CHUNKS, DATA_BASE);
