# caixeiro-viajante-2011
Algoritmo Genético implementado para resolver o problema do Caixeiro Viajante. Obs.: Desenvolvido durante o 8º período da graduação (ano 2011).

<h3> O Problema do Caixeiro Viajante </h3>

O problema do caixeiro-viajante (PCV), travelling salesman problem (TSP) (em inglês), é um problema de otimização que, apesar de parecer modesto é, na realidade, muito investigado por cientistas, matemáticos e investigadores de diversas áreas, tais como: logística, genética e produção, entre outros (Applegate et al., cop. 2006, p. 1).

O problema pertence à categoria NP-Completo que o remete para um campo de complexidade exponencial, isto é, o esforço computacional necessário para a sua resolução cresce exponencialmente com o tamanho do problema. Assim, dado que é difícil, se não impossível, determinar a solução óptima desta classe de problemas, os métodos de resolução passam pelas heurísticas e afins que, do ponto de vista matemático, não asseguram a obtenção de uma solução óptima (Cunha, 2002).

<h3> Fatos históricos </h3>

A origem do nome «travelling salesman problem» é desconhecida. Não parece existir qualquer documento que prove o(a) autor(a) do nome do problema. Merril Flood, da Universidade de Princeton, um dos investigadores mais proeminentes nas primeiras aplicações do problema proferiu, no entanto, o seguinte comentário: «I don´t know who coined the peppier name "Traveling Salesman Problem" for Whitney's problem, [...]» (Applegate et al., cop. 2006, p. 2).

Nos anos de 1800, problemas relacionados com o PCV começaram a ser desenvolvidos por dois matemáticos: o escocês William Rowan Hamilton e o britânico Thomas Penyngton Kerkman. A forma geral do PCV parece ter sido, pela primeira vez, estudada por matemáticos nos anos de 1930 em Harvard e Viena. O problema foi posteriormente estudado por Hassler Whitney e Merril Flood em Princeton. Exceptuando pequenas variações ortográficas, como traveling vs travelling ou salesman vs salesman's, o nome do problema ficou globalmente conhecido por volta do ano 1950 (Applegate et al., cop. 2006, p.2).
<h3> Definição e formulação do problema </h3>

O problema do caixeiro-viajante (representado na Figura 1) consiste na procura de um circuito que possua a menor distância, começando numa qualquer cidade, entre várias, visitando cada cidade precisamente uma vez
e regressando à cidade inicial (Nilsson, 1982).

<center><img src="https://upload.wikimedia.org/wikipedia/commons/9/9f/Example_The_travelling_salesman_problem_%28TSP%29.gif"> <figcaption>Figura 1 - Problema do caixeiro-viajante.</figcaption>

Dado um conjunto  <img src="http://upload.wikimedia.org/math/0/6/6/066b5999f8023b91253c90332f204047.png"> de n cidades c<sub>i</sub> e uma matriz de distâncias
<img src="http://upload.wikimedia.org/math/7/c/7/7c739d501ff76140601e4bcb6f2352f5.png">, onde <img src="http://upload.wikimedia.org/math/0/b/6/0b64e25e6d9320e392948c287821ccff.png">
<img src="http://upload.wikimedia.org/math/1/d/1/1d143cfce26fe2403ee996dc89c3857d.png">, ρ<sub>ij</sub> = ρ<sub>ij</sub>, ρ<sub>ij</sub> = 0), a tarefa passa por encontrar a permutação
<img src="http://upload.wikimedia.org/math/e/0/4/e04f4f542b6b512875688eaaab969158.png"> que faça com que a função objectivo (distância do circuito) <img src="http://upload.wikimedia.org/math/5/7/1/57197cfe4e3ba92d232a84b3f5a625d4.png">,
onde 

<img src="http://upload.wikimedia.org/math/c/a/2/ca266d8c990eac994062c4384f7577bd.png">

atinja o seu mínimo.

O tamanho do espaço de procura aumenta exponencialmente dependendo de n, o número de cidades, uma vez que existem

<img src="http://upload.wikimedia.org/math/c/2/7/c27217d062d82070e553fcdc5201250b.png">

circuitos possíveis (a posição inicial é arbitrária, e a ordem do circuito pode ser invertida).

Embora tenham sido desenvolvidos bons algoritmos de aproximação para o PCV, o problema continua a oferecer uma grande atracção para a aplicação de novos algoritmos, tais como os evolucionários. Isto deve-se, essencialmente, às seguintes razões:

- A problemática do PCV pode ser entendida facilmente, uma vez que se aproxima dos problemas populares do mundo real;
- O PCV demonstra o caso mais simples dos problemas de requisição que são de enorme relevância para a programação de processos industriais;
- Existem vários conjuntos de dados sobre o PCV «standard» que estão disponíveis em literatura, de tal forma que os resultados são comparáveis mesmo que o óptimo global não seja ainda definitivamente conhecido;
- Relativamente à complexidade computacional, o PCV, como um problema NP-completo, é conhecido por representar uma larga classe de problemas para os quais não existem algoritmos polinomiais em séries temporais determinísticos.

<h3> Detalhes de Implementação </h3>

A implementação possui as seguintes características:

- Permitie a definição dos parâmetros: tamanho da população, número de gerações, taxa de cruzamento, taxa de mutação;
- Recebe o valor das distâncias entre as cidades na forma de matriz (arquivo matriz.txt);
- Fornece ao final do processo evolutivo o melhor indivíduo (rota de menor custo);
- Mostra gráficos que apresentam o valor da função de fitnnes e da função objetivo do melhor indivíduo, e também o valor médio das fitness ao longo das gerações.

