package com.converter;

import android.app.Activity;
import android.os.Bundle;

import com.calatrava.bridge.CalatravaApplication;

public class Converter extends CalatravaApplication
{
  @Override
  public void onCreate()
  {
    // Call this to start Calatrava
    bootCalatrava("com.converter");
  }
}
