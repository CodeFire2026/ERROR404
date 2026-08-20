const express = requiere ('express');
const cors = requiere ('cors');
const app = express();

app.use(cors());
app.use(express.json());

let reservas = [];

app.get('/reservas', (req, res) => {
    res.json(reservas);
});

app.post('/reservar', (req, res) => {
    const { fecha, hora, nombre } = req.body;

    if (!fecha || !hora || !nombre) {
        return res.status(400).json({ error: 'faltan datos' });
    }

    const ocupado = reservas.find(r => r.fecha === fecha && r.hora === hora);
    if (ocupado) {
        return res.status(409).json({ error: 'Horario ocupado' });
    }
    
    reservas.push({ fecha, hora, nombre });
    res.json({ mensaje: 'Turno reservado exitosamente' });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});