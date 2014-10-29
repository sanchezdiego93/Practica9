<%@ page import="practica.contactos.dominios.Contacto" %>
<%@ page import="practica.contactos.dominios.Categoria" %>
<%@ page import="practica.contactos.dominios.Departamento" %>

<g:applyLayout name="plantillaBootstrap">
    <content tag="header">

    </content>

    <content tag="content">
        <%
            def categorias = Categoria.findAll()
            def label_categorias = []
            categorias.each() { categoria -> label_categorias.add(categoria.nombre) }

            def departamentos = Departamento.findAll()
            def label_departamentos = []
            departamentos.each() { departamento -> label_departamentos.add(departamento.nombre) }
            def contactos = Contacto.findAll()
            def data_departamentos = []
            def index = 0
            for(departamento in departamentos){
                data_departamentos.add(0)
            }
            for(departamento in departamentos){
                for(contacto in contactos){
                    for(contacto_dep in contacto.departamentos) {
                        if (contacto_dep.nombre == departamento.nombre) {
                            data_departamentos[index] += 1
                        }
                    }
                }
                index += 1
            }


            def labels_dep = label_departamentos
            def data_dep = [
                    'Departamentos': data_departamentos
            ]
            def data_categorias = []
            index = 0
            for(categoria in categorias){
                data_categorias.add(0)
            }
            for(categoria in categorias){
                for(contacto in contactos){
                    if(contacto.categoria.nombre == categoria.nombre){
                        data_categorias[index] += 1
                    }
                }
                index += 1
            }

        %>
        <script type="text/javascript">
            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChartCategoria);
            google.setOnLoadCallback(drawChartDepartamento);
            function drawChartCategoria() {
                var data = google.visualization.arrayToDataTable([
                    ['Categoria', 'Cantidad de Contactos'],
                    <%
                     index = 0
                     for(data in data_categorias) {%>
                    ['${label_categorias[index]}',${data}],

                    <%
                        index += 1
                        }%>
                ]);

                var options = {
                    title: 'Contacto-Categoria',
                    is3D: false
                };

                var chart = new google.visualization.PieChart(document.getElementById('categoria'));
                chart.draw(data, options);
            }
            function drawChartDepartamento() {
                var data = google.visualization.arrayToDataTable([
                    ['Departamentos', 'Cantidad de Contactos'],
                    <%
                     index = 0
                     for(data in data_departamentos) {%>
                    ['${label_departamentos[index]}',${data}],

                    <%
                        index += 1
                        }%>
                ]);

                var options = {
                    title: 'Contacto-Departamento',
                    is3D: false
                };

                var chart = new google.visualization.PieChart(document.getElementById('departamento'));
                chart.draw(data, options);
            }
        </script>
        <div class="row">
            <div class="col-md-6">
                <div id="categoria" style="width: 650px; height: 500px;"></div>
            </div>
            <div class="col-md-6">
                <div id="departamento" style="width: 650px; height: 500px;"></div>
            </div>
        </div>
    </content>

    <content tag="sidebar">

    </content>


</g:applyLayout>