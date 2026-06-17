# comparação de tratamento em um ensaio clínico

library(tidyverse)

set.seed(789)
n <- 50
data <- tibble(
  treatment = factor(
    rep(c("placebo", "droga A", "droga B"), each = n),
    levels = c("placebo", "droga A", "droga B")
  ),
  pa_0 = round(rnorm(n*3, 150, 10))
) %>% 
  mutate(
    redux = case_when(
      treatment == "placebo" ~ rnorm(n(), mean = 2, sd = 5),
      treatment == "droga A" ~ rnorm(n(), mean = 15, sd = 6),
      treatment == "droga B" ~ rnorm(n(), mean = 20, sd = 7)
    )
  )

head(data, 10)

table(data$treatment)
# cada grupo tem 50 pessoas

#análise descritiva
data %>% 
  group_by(treatment) %>% 
  summarise(
    total = n(),
    media = round(mean(redux), 1), #media de redução apos 8 semanas
    dp = round(sd(redux), 1),
    minimo = round(min(redux), 1),
    maximo = round(max(redux), 1)
  )

#gráfico de caixa
ggplot(data, aes(x = treatment, y = redux, fill = treatment)) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(width = 0.2, alpha = 0.4) +
  geom_hline(yintercept = 0, linetype = "dashed") +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Redução de pressão arterial por tratamento",
    subtitle = "após 8 semanas",
    x = "",
    y = "pressão em mmHG"
  ) +
  theme_minimal(paper = "gray85") +
  theme(legend.position = "none")

#modelo ANOVA
anova <- aov(redux ~ treatment, data = data)
summary(anova)
# resultado: HÁ diferença entre pelo menos dois grupos

#teste de Tukey
TukeyHSD(anova)
# resultado:
#droga A é melhor que placebo, pois reduz 14.3 mmHG a mais 
#droga B é melhor que placebo, pois reduz 18.8 mmHG a mais 
#droga B é emlhor que droga A, com redução de 4.51mmHG em média.

#ANOVA + lm
anova_lm <- lm(redux ~ treatment, data = data)
summary(anova_lm)
