# Cópula Arquimediana de la Familia Chávez
### Una aproximación desde la Geometría Diferencial y el Índice de Morse

[cite_start]Este repositorio presenta una nueva familia de cópulas arquimedianas, desarrollada como parte de la **Actividad #2 del curso DGAPA-UNAM 15314** impartido por el Dr. Arturo Erdely Ruíz [cite: 1, 2]. [cite_start]A diferencia de los modelos tradicionales, esta propuesta integra la teoría de **Lagrangianos convexos** y la estabilidad de sistemas dinámicos[cite: 54, 57].

## 1. Génesis e Intuición Geométrica
[cite_start]El proyecto nace de la búsqueda de una estructura de "tubo" de probabilidad con suavidad $C^\infty$[cite: 23, 34]. [cite_start]La propuesta utiliza un generador basado en funciones de prueba (*bump functions*) para garantizar que el sistema sea estrictamente convexo, vinculando la teoría de cópulas con el **Teorema del Índice de Morse**[cite: 44, 48].

## 2. Fundamentación Matemática
[cite_start]El corazón de esta familia es el **Generador Chávez**, una función continua, estrictamente decreciente y convexa[cite: 4, 35, 44].

### A. Generador No Estricto (Propuesta Original)
[cite_start]Definido para modelar soportes con límites finitos de probabilidad ($\varphi(0) < \infty$)[cite: 9, 25]:
$$\varphi(t) = e \cdot \exp\left( -\frac{1}{1-\sqrt{t}} \right)$$

* [cite_start]**Convexidad:** Se verifica mediante la condición $\ddot{\varphi}(t) > 0$ en el intervalo $(0,1)$, lo que asegura un índice de Morse estable ($\lambda = 0$)[cite: 48, 50].
* [cite_start]**Pseudo-inversa:** Calculada analíticamente para el rango $0 \le z \le \varphi(0)$ como[cite: 7, 97]:
$$\varphi^{-1}(z) = \left( 1 + \frac{1}{\ln(z/e)} \right)^2$$

### B. Generador Estricto
[cite_start]Para satisfacer la condición $\Psi(0) = +\infty$, se introduce la composición logarítmica sobre la estructura original[cite: 8, 57]:
$$\Psi(t) = -\ln\left( e \cdot \exp\left( -\frac{1}{1-\sqrt{t}} \right) \right)$$
[cite_start]Cuya inversa usual resulta en[cite: 84]:
$$\Psi^{-1}(z) = \left( \frac{z}{z+1} \right)^2$$

## 3. Generalización Paramétrica
[cite_start]Se introduce un parámetro $\theta$ para ajustar la fuerza de la dependencia y la curvatura del filamento de probabilidad[cite: 103, 106]:

* [cite_start]**Modelo No Estricto:** $\varphi_\theta(t) = e \cdot \exp\left( -\frac{1}{(1-\sqrt{t})^\theta} \right)$ con $\theta > 0$[cite: 106].
* [cite_start]**Modelo Estricto:** $\Psi_\theta(t) = -\ln(\varphi_\theta(t))$ con $\theta > 1$[cite: 106].

## 4. Implementación en Julia
[cite_start]El repositorio incluye el código para la visualización de la cópula $C(u,v) = \varphi^{[-1]}(\varphi(u) + \varphi(v))$[cite: 5, 143].

* [cite_start]**Curvas de Nivel:** Permiten observar la morfología de la densidad y la dependencia en la "tripa" de la distribución[cite: 143].
* **Superficie 3D:** Representación de la variedad matemática que confirma la suavidad y estabilidad del modelo propuesto.

---
**Autor:** Miguel Ángel Chávez García  
**Institución:** UNAM - FES Acatlán  
**Línea de investigación:** Teoría del índice de Morse para Lagrangianos convexos.
