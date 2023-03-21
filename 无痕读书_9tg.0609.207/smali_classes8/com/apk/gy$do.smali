.class public Lcom/apk/gy$do;
.super Ljava/lang/Object;
.source "HttpParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Ljava/io/File;

.field public transient for:Lcom/apk/vg0;

.field public if:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FileWrapper{file=null, fileName=null, contentType=null, fileSize=0}"

    return-object v0
.end method
