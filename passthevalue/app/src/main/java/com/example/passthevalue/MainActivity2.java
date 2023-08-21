package com.example.passthevalue;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

public class MainActivity2 extends AppCompatActivity {

    private TextInputEditText textinputname;
    private TextInputEditText textinputemail;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        textinputname = findViewById(R.id.textinputname);
        textinputemail = findViewById(R.id.textinputemail);

        String username = getIntent().getStringExtra("Keyname");
        String email = getIntent().getStringExtra("Keyemail");

        textinputname.setText(username);
        textinputemail.setText(email);
    }
}