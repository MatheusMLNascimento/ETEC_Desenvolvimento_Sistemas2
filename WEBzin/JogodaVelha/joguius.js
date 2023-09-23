let currentPlayer = 'X';
let board = [
  ['', '', ''],
  ['', '', ''],
  ['', '', '']
];

function makeMove(row, col) {
  if (board[row][col] === '') {
    board[row][col] = currentPlayer;
    document.getElementById('status').textContent = `Jogador ${currentPlayer} fez o movimento na posição (${row}, ${col})`;
    document.querySelector(`.cell:nth-child(${row * 3 + col + 1})`).textContent = currentPlayer;
    checkWinner();
    currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
  }
}

function checkWinner() {
  const winningCombos = [
    [[0, 0], [0, 1], [0, 2]],
    [[1, 0], [1, 1], [1, 2]],
    [[2, 0], [2, 1], [2, 2]],
    [[0, 0], [1, 0], [2, 0]],
    [[0, 1], [1, 1], [2, 1]],
    [[0, 2], [1, 2], [2, 2]],
    [[0, 0], [1, 1], [2, 2]],
    [[0, 2], [1, 1], [2, 0]]
  ];

  for (const combo of winningCombos) {
    const [a, b, c] = combo;
    if (board[a[0]][a[1]] && board[a[0]][a[1]] === board[b[0]][b[1]] && board[a[0]][a[1]] === board[c[0]][c[1]]) {
      document.getElementById('status').textContent = `Jogador ${board[a[0]][a[1]]} venceu!`;
      disableBoard();
      break;
    }
  }

  if (!board.flat().includes('')) {
    document.getElementById('status').textContent = "Empate!";
    disableBoard();
  }
}

function disableBoard() {
  document.querySelectorAll('.cell').forEach(cell => cell.onclick = null);
}