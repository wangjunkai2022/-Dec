.class public Lcom/apk/no0$do;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/apk/kp0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/no0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/lang/Appendable;

.field public final if:Lcom/apk/ho0$do;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lcom/apk/ho0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/no0$do;->do:Ljava/lang/Appendable;

    .line 3
    iput-object p2, p0, Lcom/apk/no0$do;->if:Lcom/apk/ho0$do;

    .line 4
    invoke-virtual {p2}, Lcom/apk/ho0$do;->if()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/no0;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/no0$do;->do:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/apk/no0$do;->if:Lcom/apk/ho0$do;

    invoke-virtual {p1, v0, p2, v1}, Lcom/apk/no0;->switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/apk/xn0;

    invoke-direct {p2, p1}, Lcom/apk/xn0;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public if(Lcom/apk/no0;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/apk/no0;->return()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/no0$do;->do:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/apk/no0$do;->if:Lcom/apk/ho0$do;

    invoke-virtual {p1, v0, p2, v1}, Lcom/apk/no0;->throws(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/apk/xn0;

    invoke-direct {p2, p1}, Lcom/apk/xn0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
