package com.example.cicddemo;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class HelloControllerTest {

private final HelloController controller = new HelloController();

@Test
void hello_returnsGreeting() {
    assertEquals("Hello CI/CD - v1", controller.hello());
}

@Test
void health_returnsOk() {
    assertEquals("OK", controller.health());
}

}
