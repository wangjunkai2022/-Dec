.class public final Lcom/apk/sk$if;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/apk/tk$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/tk$do<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/dj;

.field public final synthetic if:Lcom/apk/sk;


# direct methods
.method public constructor <init>(Lcom/apk/sk;Lcom/apk/dj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/sk$if;->if:Lcom/apk/sk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/sk$if;->do:Lcom/apk/dj;

    return-void
.end method
