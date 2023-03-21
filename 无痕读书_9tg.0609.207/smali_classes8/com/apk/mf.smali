.class public Lcom/apk/mf;
.super Ljava/lang/Object;
.source "EventBase.java"


# instance fields
.field public do:Ljava/lang/String;

.field public for:[Ljava/lang/Object;

.field public if:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/mf;

    invoke-direct {v0}, Lcom/apk/mf;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/apk/mf;->do:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, v0, Lcom/apk/mf;->if:Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs if(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/mf;

    invoke-direct {v0}, Lcom/apk/mf;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/apk/mf;->do:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/apk/mf;->for:[Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/apk/rl0;->else(Ljava/lang/Object;)V

    return-void
.end method
