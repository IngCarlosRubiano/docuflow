package com.ingcarlosrubiano.docuflow;

import org.springframework.boot.SpringApplication;

public class TestDocuflowApplication {

  public static void main(String[] args) {
    SpringApplication.from(DocuflowApplication::main)
        .with(TestcontainersConfiguration.class)
        .run(args);
  }
}
