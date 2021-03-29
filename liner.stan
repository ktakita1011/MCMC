data { 
  int<lower=0> N; // 学習データの数
  real X[N]; // 単回帰モデルの入力x
  real Y[N]; // 単回帰モデルの出力y
}
parameters { // parameterセクション
  real alpha; // 単回帰モデルの切片
  real beta; // 単回帰モデルのxの係数
  real<lower=0> sigma; // 単回帰モデルからの誤差の標準偏差
}
model { // モデルを宣言するmodelセクション
  for (n in 1:N)  {
    Y[n]  ~  normal(alpha + beta * X[n], sigma); // 線形単回帰モデル
  }
}