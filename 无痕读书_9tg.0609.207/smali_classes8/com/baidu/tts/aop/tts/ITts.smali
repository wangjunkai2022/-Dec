.class public interface abstract Lcom/baidu/tts/aop/tts/ITts;
.super Ljava/lang/Object;
.source "ITts.java"

# interfaces
.implements Lcom/baidu/tts/j/b;


# virtual methods
.method public abstract auth(Lcom/baidu/tts/f/m;)Lcom/baidu/tts/auth/AuthInfo;
.end method

.method public abstract freeCustomResource(Lcom/baidu/tts/m/e;)I
.end method

.method public abstract getMode()Lcom/baidu/tts/f/m;
.end method

.method public abstract getTtsListener()Lcom/baidu/tts/aop/ttslistener/TtsListener;
.end method

.method public abstract getTtsParams()Lcom/baidu/tts/m/j;
.end method

.method public abstract loadCustomResource(Lcom/baidu/tts/m/e;)I
.end method

.method public abstract loadEnglishModel(Lcom/baidu/tts/m/f;)I
.end method

.method public abstract loadModel(Lcom/baidu/tts/m/g;)I
.end method

.method public abstract setAudioAttributes(II)I
.end method

.method public abstract setAudioSampleRate(I)I
.end method

.method public abstract setAudioStreamType(I)I
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setMode(Lcom/baidu/tts/f/m;)V
.end method

.method public abstract setParam(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
.end method

.method public abstract setStereoVolume(FF)I
.end method

.method public abstract setTtsListener(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
.end method

.method public abstract speak(Lcom/baidu/tts/m/i;)V
.end method

.method public abstract synthesize(Lcom/baidu/tts/m/i;)V
.end method
