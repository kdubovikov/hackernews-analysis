data {
  int<lower=0> N;        // number of observations
  int<lower=0> score[N]; // post scores
}

parameters {
  real<lower=0> mu;
  real<lower=0> phi;
}

model {
  mu ~ cauchy(0, 10);
  phi ~ cauchy(0, 10);
  score ~ neg_binomial_2_log(mu, phi);
}