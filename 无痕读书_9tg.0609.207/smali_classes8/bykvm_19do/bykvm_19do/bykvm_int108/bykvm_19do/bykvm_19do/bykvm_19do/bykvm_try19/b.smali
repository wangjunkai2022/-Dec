.class public Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_try19/b;
.super Ljava/lang/Object;
.source "TrackRetryRepertoryImpl.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_try19/a;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 5

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    const-string v1, "trackurl"

    const-string v2, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    const-string v3, "id"

    const-string v4, " TEXT UNIQUE,"

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->import(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    const-string v2, " TEXT ,"

    const-string v3, "replaceholder"

    const-string v4, " INTEGER default 0, "

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "retry"

    const-string v2, " INTEGER default 0"

    const-string v3, ")"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
