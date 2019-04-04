object gimenez {
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
		dineroTotal+=sueldo
		return dineroTotal}
	method gastar(cuanto){
		dineroTotal-=cuanto
		return dineroTotal}
	method totalDeuda(
			
	){}
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

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()}
}
