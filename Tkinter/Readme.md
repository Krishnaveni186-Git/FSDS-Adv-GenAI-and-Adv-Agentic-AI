What is Tkinter?

**Tkinter** is Python's built-in library used to create GUI (Graphical User Interface) applications.

How does Tkinter work?

Tkinter works using **Python code + GUI widgets + event handling**.

**1. Create the main window**:

import tkinter as tk

window = tk.Tk()

window.title("My Application")

window.geometry("400x300")

**2. Add widgets**

Widgets are the components of a GUI.

label = tk.Label(window, text="Enter your name")

label.pack()

entry = tk.Entry(window)

entry.pack()

button = tk.Button(window, text="Submit")

button.pack()

**3. Add an event**

An event is an action performed by the user, such as clicking a button.

def show_message():
    
    name = entry.get()
    
    label.config(text="Hello " + name)

button = tk.Button(
    
    window,
    
    text="Submit",
    
    command=show_message
)
button.pack()

**When the user clicks the button, the show_message() function runs**.

**4. Start the event loop**
window.mainloop()
This is very important.

mainloop() continuously waits for user actions such as:

- Button click
- Keyboard input
- Mouse movement
- Closing the window

**This is called event-driven programming**.

**Where is Tkinter used in the real world?**

Tkinter is commonly used for small and medium-sized desktop applications.

**Internal company tools**
Organizations may use Tkinter for applications such as:
- Employee management systems
- Attendance systems
- Inventory management
- Data entry tools
- File management tools
- Report generation tools

**For example**:

Employee Management System

[ Add Employee ]
[ Update Employee ]
[ Delete Employee ]
[ Search Employee ]

**Educational software**
Tkinter is widely used for learning projects:

- Calculator
- Quiz applications
- Student management systems
- To-do applications
- Login systems
- Billing systems

**Tkinter = Python + GUI + User Interaction**
It is mainly used to create desktop applications and internal business tools.
