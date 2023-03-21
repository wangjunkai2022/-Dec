.class public Lcom/apk/q90;
.super Ljava/lang/Object;
.source "TrGsonHelper.java"


# static fields
.field public static final do:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/apk/q90;->do:Lcom/google/gson/Gson;

    return-void
.end method
