package com.therealansh.iiit_sonepat_stable


import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.BroadcastReceiver
import android.os.Bundle
import android.view.View
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
import androidx.localbroadcastmanager.content.LocalBroadcastManager
import org.jitsi.meet.sdk.*
import timber.log.Timber
import java.net.MalformedURLException
import java.net.URL
import android.widget.Toast
import android.R.attr.name
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugins.GeneratedPluginRegistrant

/* Jitsi conveniently provides a pre-build SDK artifacts/binaries in its Maven repository */

class MainActivity: FlutterActivity() {


    /*The host listens on the platform channel, and receives the message. It then calls into any number of platform-specific
      APIs—using the native programming language—and sends a response back to the client, the Flutter portion of the app.*/

    private val CHANNEL = "samples.flutter.dev/meet"

    private val broadcastReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            onBroadcastReceived(intent)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Initialize default options for Jitsi Meet conferences.
        val serverURL: URL = try {
            // When using JaaS, replace "https://meet.jit.si" with the proper serverURL
            URL("https://meet.jit.si")
        } catch (e: MalformedURLException) {
            e.printStackTrace()
            throw RuntimeException("Invalid server URL!")
        }
        val defaultOptions = JitsiMeetConferenceOptions.Builder()
                .setServerURL(serverURL)
                // When using JaaS, set the obtained JWT here
                //.setToken("MyJWT")
                // Different features flags can be set
                //.setFeatureFlag("toolbox.enabled", false)
                //.setFeatureFlag("filmstrip.enabled", false)
                .setWelcomePageEnabled(false)
                .build()
        JitsiMeet.setDefaultConferenceOptions(defaultOptions)

        registerForBroadcastMessages()
    }

    override fun onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(broadcastReceiver)
        super.onDestroy()
    }

    var usertext:String?=""//For storing UserName from client side

    //On the platform side, MethodChannel on Android (MethodChannelAndroid) and FlutterMethodChannel on iOS (MethodChanneliOS) enable receiving method calls and sending back a result.
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            usertext = call.argument<String>("text")
            if (call.method == "Meeting started") {
                onButtonClick(call,result,usertext)
            }
            else
            {
                result.notImplemented()
            }

        }
    }


    fun onButtonClick(call:MethodCall,result:Result,text: String?) {

        try{
            if (text!!.length > 0) {
                // Build options object for joining the conference. The SDK will merge the default
                // one we set earlier and this one when joining.
                val options = JitsiMeetConferenceOptions.Builder()
                        .setRoom(text)
                        // Settings for audio and video
                        .setAudioMuted(true)
                        .setVideoMuted(true)
                        .build()
                // Launch the new activity with the given options. The launch() method takes care
                // of creating the required Intent and passing the options.

                JitsiMeetActivity.launch(this, options)
                result.success("Joined")                    //Invoke when Text is entered


            }
            else
            {
                result.success("Not Joined:Enter text")    //Invoke when Text is not entered
            }
        }
        catch (e:java.lang.Exception)
        {
            result.error("UNAVAILABLE", "Error in Joining Meeting ", null)
        }

        }

    private fun registerForBroadcastMessages() {
        val intentFilter = IntentFilter()

        /* This registers for every possible event sent from JitsiMeetSDK
           If only some of the events are needed, the for loop can be replaced
           with individual statements:
           ex:  intentFilter.addAction(BroadcastEvent.Type.AUDIO_MUTED_CHANGED.action);
                intentFilter.addAction(BroadcastEvent.Type.CONFERENCE_TERMINATED.action);
                ... other events
         */
        for (type in BroadcastEvent.Type.values()) {
            intentFilter.addAction(type.action)
        }

        LocalBroadcastManager.getInstance(this).registerReceiver(broadcastReceiver, intentFilter)
    }

    // For handling different JitsiMeetSDK events
    private fun onBroadcastReceived(intent: Intent?) {
        if (intent != null) {
            val event = BroadcastEvent(intent)
            when (event.type) {
                BroadcastEvent.Type.CONFERENCE_JOINED -> Timber.i("Conference Joined with url%s", event.data["url"])
                BroadcastEvent.Type.PARTICIPANT_JOINED -> Timber.i("Participant joined%s", event.data["name"])
            }
        }
    }

    // For sending actions to JitsiMeetSDK
    private fun hangUp() {
        val hangupBroadcastIntent: Intent = BroadcastIntentHelper.buildHangUpIntent()
        LocalBroadcastManager.getInstance(org.webrtc.ContextUtils.getApplicationContext()).sendBroadcast(hangupBroadcastIntent)
    }
}
