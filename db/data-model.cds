namespace com.app.mytodoscap;
using { managed } from '@sap/cds/common';

  entity Todos : managed {
    key ID    : Integer;
    name      : String;
    category  : Association to Categories;
    status    : Integer enum {
        open = 1;
        done = 2;
    };
  }

  entity Categories : managed {
    key ID : Integer;
    title  : String;
    todos  : Association to many Todos on todos.category = $self;
  }