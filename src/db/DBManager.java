package db;

import java.util.ArrayList;

public class DBManager {

    private static Long id = 4L;
    private static final ArrayList<Task> tasks = new ArrayList<>();
    static {
        tasks.add(new Task(1L,"Bitlab", "Finish your sprint task", "2023-04-16"));
        tasks.add(new Task(2L, "Registration", "Make an online registration", "2023-04-22"));
        tasks.add(new Task(3L, "Packing", "Begin packing all the necessities to the vacay", "2023-04-21"));
    }

    public static ArrayList<Task> getTasks(){
        return tasks;
    }

    public static void addTask(Task task){
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Task getTaskById(Long id){
        if(tasks != null) {
            for (Task i : tasks) {
                if (i.getId() == id) {
                    return i;
                }
            }
        }
        return null;
    }

    public static void deleteTaskById(Long id){
        for(int i=0; i<tasks.size(); i++){
            if(tasks.get(i).getId() == id){
                tasks.remove(i);
            }
        }
    }
}
