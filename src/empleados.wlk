object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var property sueldo = 0
	var dineroTotal=0
	var deuda=0
	method sueldo() { sueldo=15000
		return sueldo}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		return sueldo}
	method dineroTotal(){
		if(dineroTotal>=0){dineroTotal=sueldo-deuda return dineroTotal}
		else if(dineroTotal<0){dineroTotal=0 return dineroTotal}
		else return dineroTotal}
	method gastar(cuanto){ 
		dineroTotal=dineroTotal-cuanto}
	method deudaTotal(){
		if(dineroTotal<=0){deuda=deuda-dineroTotal return deuda}
		else deuda=0 return deuda}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15	
	var property sueldo=0
	var totalCobrado=0
	method venderEmpanada() {
		cantidadEmpanadasVendidas +=1 }
	method sueldo(){
		sueldo=(cantidadEmpanadasVendidas*montoPorEmpanada)
		return sueldo}
	method cobrarSueldo(){
		return sueldo}
	method totalCobrado(){
		totalCobrado+=sueldo
	return totalCobrado}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()}
}
