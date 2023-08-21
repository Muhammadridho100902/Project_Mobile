package com.example.sqlitetutorial;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class UpdateActivity extends AppCompatActivity {
    protected Cursor cursor;
    DBHelper db;
    Button btn_simpan;
    EditText nama, kampus;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_update);
        db = new DBHelper(this);
        nama = findViewById(R.id.nama);
        kampus = findViewById(R.id.kampus);
        btn_simpan = findViewById(R.id.btn_simpan);

        SQLiteDatabase dbl = db.getReadableDatabase();
        cursor = dbl.rawQuery("SELECT * FROM mahasiswa where nama = '" +
                getIntent().getStringExtra("nama")+"'", null);
        cursor.moveToFirst();
        if (cursor.getCount() > 0){
            cursor.moveToPosition(0);
            nama.setText(cursor.getString(0).toString());
            kampus.setText(cursor.getString(1).toString());
        }

        btn_simpan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
            SQLiteDatabase dbl = db.getWritableDatabase();
            dbl.execSQL("update mahasiswa set nama = '" +
                    nama.getText().toString() +"', kampus =  '" +
                    kampus.getText().toString() + "' where nama = '" +
                    getIntent().getStringExtra("nama")+"'");
                Toast.makeText(UpdateActivity.this, "Data berhasil di update", Toast.LENGTH_SHORT).show();
                MainActivity.ma.RefreshList();
                finish();
            }
        });
    }
}