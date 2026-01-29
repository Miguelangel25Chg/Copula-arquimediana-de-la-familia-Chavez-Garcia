using Plots

# 1. Definimos el Generador Chávez (No estricto) como en tu PDF [cite: 27]
# phi(t) = e * exp(-1 / (1 - sqrt(t)))
phi_chavez(t) = t >= 1.0 ? 0.0 : (t <= 0.0 ? 1.0 : exp(1.0) * exp(-1.0 / (1.0 - sqrt(t))))

# 2. Pseudo-inversa numérica (Bisección para precisión de cirujano) [cite: 7, 78]
function inv_phi_chavez(z)
    if z <= 0.0 return 1.0 end
    if z >= 1.0 return 0.0 end # phi(0) = 1 [cite: 25, 28]
    
    low, high = 0.0, 1.0
    for _ in 1:50
        mid = (low + high) / 2
        phi_chavez(mid) > z ? low = mid : high = mid
    end
    return (low + high) / 2
end

# 3. Construcción de la superficie de la Cópula [cite: 5, 73]
C(u, v) = inv_phi_chavez(phi_chavez(u) + phi_chavez(v))

# 4. Mallado para la gráfica 3D
u_vals = range(0, 1, length=50)
v_vals = range(0, 1, length=50)
z_vals = [C(u, v) for u in u_vals, v in v_vals]

# 5. ¡A tirar la superficie!
surface(u_vals, v_vals, z_vals, 
    title="Superficie de la Cópula Chávez (No Estricta)",
    xlabel="u", ylabel="v", zlabel="C(u,v)",
    color=:viridis, camera=(30, 30),
    alpha=0.8, fillalpha=0.7)