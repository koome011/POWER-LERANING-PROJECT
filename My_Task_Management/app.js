// Firebase initialization
firebase.initializeApp({
    apiKey: "AIzaSyD_K0XOCm6qpjNwsygPXg049a_ezDm8yJk",
    authDomain: "my-manager-207ea.firebaseapp.com",
    projectId: "my-manager-207ea",
    storageBucket: "my-manager-207ea.appspot.com",
    messagingSenderId: "1063929603591",
    appId: "1:1063929603591:web:1596fbbbbc0471e5a7aca2",
    measurementId: "G-28FMTMQ0ES"
});

const db = firebase.firestore();

// Function to add a task
function addTask() {
    const taskName = document.getElementById('taskName').value.trim();
    if (taskName !== "") {
        db.collection('tasks').add({
            task: taskName,
            timestamp: firebase.firestore.FieldValue.serverTimestamp()
        }).then(() => {
            document.getElementById('taskName').value = ""; // Clear input field
        }).catch(error => {
            console.error("Error adding task: ", error);
        });
    }
    return false; // Prevent form submission
}

// Function to render tasks
function renderTasks(doc) {
    const taskList = document.getElementById("taskList");
    const li = document.createElement('li');
    li.className = "li";
    li.setAttribute('data-id', doc.id); // Set data-id attribute for deletion reference
    li.innerHTML = `
        <span>${doc.data().task}</span>
        <button class="delete-btn" onclick="deleteTask('${doc.id}')">X</button>
    `;
    taskList.appendChild(li);
}

// Function to remove tasks from the DOM
function removeTask(id) {
    const taskList = document.getElementById("taskList");
    const taskToRemove = taskList.querySelector(`[data-id='${id}']`);
    taskList.removeChild(taskToRemove);
}

// Real-time listener for Firestore changes
db.collection('tasks')
.orderBy('timestamp', 'desc')
.onSnapshot(snapshot => {
    const changes = snapshot.docChanges();
    changes.forEach(change => {
        if (change.type === 'added') {
            renderTasks(change.doc);
        } else if (change.type === 'removed') {
            removeTask(change.doc.id);
        }
    });
});

// Function to delete a task
function deleteTask(id) {
    db.collection('tasks').doc(id).delete().catch(error => {
        console.error("Error deleting task: ", error);
    });
}
