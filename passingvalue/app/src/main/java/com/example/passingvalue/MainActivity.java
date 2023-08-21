package com.example.passingvalue;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.google.android.material.textfield.TextInputEditText;

public class MainActivity extends AppCompatActivity {

    EditText inputName;
    EditText inputEmail;
    Button confirm_btn;
    RadioGroup radioGroup;
    RadioButton radioButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        inputName = findViewById(R.id.text_input_name);
        inputEmail = findViewById(R.id.text_input_email);
        radioGroup = findViewById(R.id.radio_vaccine);
        confirm_btn = findViewById(R.id.confirm_btn);

        confirm_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String inputtextName =inputName.getText().toString();
                String inputtextEmail = inputEmail.getText().toString();

                int selectedId = radioGroup.getCheckedRadioButtonId();

                radioButton = (RadioButton) findViewById(selectedId);

                Intent intent = new Intent(getApplicationContext(), MainActivity2.class);
                intent.putExtra("Keyname", inputtextName);
                intent.putExtra("Keyemail", inputtextEmail);
                intent.putExtra("selectedId", radioButton.getText().toString());
                startActivity(intent);
            }
        });


    }
}