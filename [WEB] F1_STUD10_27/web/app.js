async function connecttopage_hackit() {
    try {
        const response = await fetch('/hidden/flag.txt');
        if (response.ok) {
            const flag = await response.text();
            console.log(flag);
        } else {
            console.log('No tienes acceso a la flag.');
        }
    } catch (error) {
        console.log('Error al intentar leer la flag:', error);
    }
}
