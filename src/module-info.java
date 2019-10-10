module kasirapp {

    requires javafx.web;
    requires javafx.swing;
    requires javafx.media;
    requires javafx.graphics;
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.base;
    requires java.sql;

    exports Application.controller;
    exports  Application.model;

    opens Application.controller;
    opens Application.model;
    opens Application;

}