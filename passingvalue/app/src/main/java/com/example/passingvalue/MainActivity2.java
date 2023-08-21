package com.example.passingvalue;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity2 extends AppCompatActivity {

    EditText input_name, input_email, input_vaccine;
    Button backbtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        input_name = findViewById(R.id.input_name);
        input_email = findViewById(R.id.input_email);
        input_vaccine = findViewById(R.id.input_vaccine);
        backbtn = findViewById(R.id.backbtn);

        String username =getIntent().getStringExtra("Keyname");
        String email = getIntent().getStringExtra("Keyemail");
        String vaccine = getIntent().getExtras().getString("selectedId");

        input_name.setText(username);
        input_email.setText(email);
        input_vaccine.setText(vaccine);

        backbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intent);
            }
        });
    }
}