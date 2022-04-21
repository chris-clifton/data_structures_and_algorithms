// JS implementation

function selectionSort(array) {
  for (let i = 0; i < array.length; i++) {
    let currentLowestIndex = i;

    for (let j = i + 1; j < array.length; j++) {
      if(array[j] < array[currentLowestIndex]) {
        currentLowestIndex = j;
      }
    }

    if (currentLowestIndex != i) {
      let temp = array[i];
      array[i] = array[currentLowestIndex];
      array[currentLowestIndex] = temp;
    }
  }

  console.log(array);
  return array;
}

let arrayOne = [9, 8, 7, 6, 5, 4, 3, 2, 1];
let arrayTwo = [3, 1, 2, 5, 4, 6, 8, 7, 9];

selectionSort(arrayOne);
selectionSort(arrayTwo);
