// script.js

document.addEventListener('DOMContentLoaded', () => {
    const taskInput = document.getElementById('task-input');
    const addTaskBtn = document.getElementById('add-task-btn');
    const taskList = document.getElementById('task-list');

    addTaskBtn.addEventListener('click', addTask);

    taskInput.addEventListener('keypress', (e) => {
        if (e.key === 'Enter') {
            addTask();
        }
    });

    function addTask() {
        const taskText = taskInput.value.trim();
        if (taskText === '') {
            return;
        }

        const li = document.createElement('li');
        li.innerHTML = `
            <span>${taskText}</span>
            <button onclick="removeTask(this)">Remove</button>
        `;

        taskList.appendChild(li);
        taskInput.value = '';

        // Delay the show class addition for animation
        setTimeout(() => {
            li.classList.add('show');
        }, 10);
    }
});

function removeTask(button) {
    const li = button.parentElement;
    li.classList.remove('show');
    li.addEventListener('transitionend', () => {
        li.remove();
    });
}
