using com.app.mytodoscap as my from '../db/data-model';

service TodoService {
    entity Todos as projection on my.Todos;
    entity Categories as projection on my.Categories;
}