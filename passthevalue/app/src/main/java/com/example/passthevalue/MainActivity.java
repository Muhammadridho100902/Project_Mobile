package com.example.passthevalue;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.google.android.material.textfield.TextInputLayout;

public class MainActivity extends AppCompatActivity {

    private TextInputLayout text_input_name;
    private TextInputLayout text_input_email;
    Button confirm_btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        text_input_name = findViewById(R.id.text_input_name);
        text_input_email = findViewById(R.id.text_input_email);
        confirm_btn = findViewById(R.id.confirm_btn);

        confirm_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String inputName = text_input_name.getEditText().getText().toString();
                String inputEmail = text_input_email.getEditText().getText().toString();

                Intent intent = new Intent(MainActivity.this, MainActivity2.class);
                intent.putExtra("Keyname", inputName);
                intent.putExtra("Keyemail", inputEmail);
                startActivity(intent);
            }
        });


    }
}