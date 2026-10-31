from flask import Blueprint, render_template

biblioteca_bp = Blueprint('biblioteca', __name__)

@biblioteca_bp.route('/biblioteca')
def biblioteca():
    # temporal para prueba
    datos_stats = {
        'total_titulos': 0, 
        'total_ejemplares': 0, 
        'copias_disponibles': 0, 
        'prestamos_activos': 0, 
        'lectores_activos': 0
    }
    
    return render_template(
        'biblioteca.html',
        stats=datos_stats,
        libros=[],
        prestamos=[]
    )