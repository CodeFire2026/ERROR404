// Ejercicio 2: Crear un sistema simple de gestion de tareas

function createTaskManager() {

    let task = [];

    return {

        addTask: function(task) {

            let newTask = {
                id: task.length + 1,
                task: task,
                completed: false
            };

            task.push(newTask);

            console.log("Tarea Agregada:", task);
        },

        completeTask: function(taskId) {

            for (let i = 0; i < task.length; i++) {

                if (task[i].id === taskId) {
                    task[i].completed = true;
                    console.log("Tarea Completa", taskId[i].task);
                    return;
                }
            }

            console.log("No se encontro la tarea.");

        },

        listTask: function() {
            console.log("Lista de tarea:");

            for (let i = 0; i < task.length; i++) {

                console.log(

                    task[i].id +
                    " - " + 
                    task[i].task +
                    " - " +
                    (task[i].completed ? "Completada" : "Pendiente")

                ),
            }
        }
    };
}

const myTask = createTaskManager();

myTask.addTask("Aprender JavaScript");
myTask.addTask("Hacer ejercicio");

myTask.listTask();

myTask.completeTask(1);

myTask.listTask();