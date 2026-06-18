# Projeto 2 – Comparando tratamentos em um ensaio clínico

1. Objetivo

Um ensaio clínico testa se 2 drogas, droga A e droga B, são eficazes para a redução da pressão arterial. O tempo de monitoramento foi de 8 semanas.

2. Metodologia

Uma amostra de 150 indivíduos foi dividida entre 3 grupos de 50 cada: um grupo controle (placebo), um grupo medicada com a droga A e outro grupo ministrada a droga B. Usou-se o modelo estatístico ANOVA para comparar os dados e determinar se houve diferença entre os grupos e o Teste de Tukey para distinguir quais drogas tiveram melhor eficácia.

3. Resultados

A análise descritiva de cada grupo mostrou que as médias e os desvios padrão de cada tratamento estão na tabela a seguir

Tabela 1 – Resultados da estatística descritiva de cada tratamento

| TRATAMENTO | MÉDIA | DESVIO PADRÃO |
| -------------------- | ---------- | ------------------------ |
| 	placebo     | 	1,4     | 		5,3                |
| 	droga A     |     15,7   | 		6,1                |
| 	droga B     | 	20,3   | 		6,8                |

Os resultados do modelo Anova mostram que o F-value é de 130,7 e o p-valor é menor que 2.10<sup>-16<sup>.

O teste de Tukey tem como resultados:

Tabela 2 – Resultados do Teste de Tukey

| TRATAMENTO | DIFF  | P ADJ   |
| -------------------- | ------- | ---------- |
| drogaA-placebo  | 14,31 | 	0,0     |
| drogaB-placebo  | 18,82 | 	0,0     |
| drogaB-drogaA  |   4,51  | 0.00085 |

4. Discussão e Conclusão

Observando a tabela 1, nota-se que as médias de redução para as drogas, tanto A quanto B, são maiores que o placebo, podendo indicar que elas são mais eficazes que o placebo na diminuição da pressão arterial após 8 semanas. A droga B ainda tem maior média, o que pode significar que sua eficácia seja ainda melhor do que a droga A.
Como p-valor < 0.05, no modelo Anova, rejeita-se H<sub>0</sub>, ou seja, há uma diferença significativa entre 2 grupos e o Teste de Tukey determina quais são esses grupos através da observação do p-adj: se o p adj < 0,05, os dois grupos diferem significativamente.
Segundo a tabela 2, a *droga A* e a **droga B** reduzem *14,31* e **18,82** a mais que o placebo, respectivamente. </n>
Quanto à comparação entre as duas drogas, a <mark>droga B</mark> apresenta melhor eficácia do que a droga A. </n>
Concluindo, as drogas A e B são mais eficazes na redução da pressão arterial do que o placebo, após 8 semanas, sendo que a droga B apresenta maior redução de pressão arterial no mesmo período.
Aconselha-se a pesquisar os custos, a facilidade de administração e os efeitos colaterais de cada droga para uma melhor recomendação do método utilizado.

5. Bibliotecas utilizadas

- [tidyverse](https://tidyverse.org/)

6. Autor(a/es)

Este caso foi retirado do curso "Análise de dados" do [campus Virtual da Fiocruz](https://cursosqualificacao.campusvirtual.fiocruz.br/) e editado por [Cristina T. Iwassaki](https://www.linkedin.com/in/cristina-iwassaki/).
