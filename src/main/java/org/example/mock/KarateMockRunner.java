package org.example.mock;

import com.intuit.karate.core.MockServer;

public class KarateMockRunner {
    public static void main(String[] args) {
        MockServer server = MockServer.feature("classpath:mockApi.feature").http(8080).build();
        System.out.println("Karate Mock Server started on port: " + server.getPort());

        // Keep server running
        try {
            Thread.sleep(Long.MAX_VALUE);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
