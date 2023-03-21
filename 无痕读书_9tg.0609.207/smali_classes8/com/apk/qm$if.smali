.class public Lcom/apk/qm$if;
.super Lcom/apk/qm$do;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/qm$do<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/qm$if$do;

    invoke-direct {v0}, Lcom/apk/qm$if$do;-><init>()V

    invoke-direct {p0, v0}, Lcom/apk/qm$do;-><init>(Lcom/apk/qm$new;)V

    return-void
.end method
