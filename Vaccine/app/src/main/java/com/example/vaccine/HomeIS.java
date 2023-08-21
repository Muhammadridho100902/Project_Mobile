package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class HomeIS extends AppCompatActivity {

    Button showdata, registerdata, logoutbtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_i_s);

        showdata = findViewById(R.id.showdata);
        registerdata = findViewById(R.id.registerdata);
        logoutbtn = findViewById(R.id.logoutbtn);

        registerdata.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), Home.class);
                startActivity(intent);
            }
        });

        showdata.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), showdata.class);
                startActivity(intent);
            }
        });

        logoutbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), onboarding.class);
                Toast.makeText(HomeIS.this, "Your Account has been Log Out", Toast.LENGTH_SHORT).show();
                startActivity(intent);
            }
        });
    }
}